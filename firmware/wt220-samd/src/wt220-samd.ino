/*
 * Copyright (c) 2019 John Whittington.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "wt220-samd.h"
#include "i2c.h"

#include <RBD_Timer.h>
#include <RBD_Button.h>

// TODO - add serial or I2C read-back of external I/O

RBD::Button boot(BOOT_BTN_PIN); // input_pullup by default
RBD::Timer pressTimer(BOOT_HOLD_DELAY);
state_t state = state_t::PI_OFF;

RBD::Timer ledTask(10);
struct led_t {
  uint16_t counter = 0;
  uint16_t current_count = 0;
} main_led;

RBD::Timer outTestTask(50);
RBD::Timer shutdownTimer(3000);
RBD::Timer i2cTimeoutTimer(20000);

Uart *ExtSerial = &Serial1;
#if DEBUG_DEVICE == 0
  Uart *DbgSerial = SerialUSB;
#elif DEBUG_DEVICE == 1
  Uart *DbgSerial = ExtSerial;
#endif

const char* serialStart = "\
-------------- WT 220 SAMD --------------\n\
------- IO Panel Microcontroller --------\n\
--- JBR Engineering Research Ltd 2019 ---\n";

static inline void setup_rs232() {
  pinMode(RS232_RTS_PIN, OUTPUT); digitalWrite(RS232_RTS_PIN, LOW);
  pinMode(RS232_CTS_PIN, INPUT);
  ExtSerial->begin(9600); // ttl to rs232
}

static inline void setup_gpio() {
  pinMode(LED_PIN, OUTPUT);

  pinMode(NOT_PI_EN_PIN, OUTPUT); digitalWrite(NOT_PI_EN_PIN, HIGH);

  pinMode(USBC_INT_PIN, INPUT); pinMode(USBC_ID_PIN, INPUT);

  // buffered inputs/outputs
  analogWriteResolution(ALOG_RESOLUTION_BITS);
  analogReadResolution(ALOG_RESOLUTION_BITS);
  /* analogReference(AR_EXTERNAL); */

  pinMode(AIN1_PIN, INPUT); pinMode(AIN2_PIN, INPUT);
  pinMode(DIN1_PIN, INPUT_PULLUP); pinMode(DIN2_PIN, INPUT_PULLUP);

  pinMode(DOUT1_PIN, OUTPUT); pinMode(DOUT2_PIN, OUTPUT);
  digitalWrite(DOUT1_PIN, HIGH); digitalWrite(DOUT2_PIN, HIGH);
}

static void set_aout_voltage(float voltage) {
  uint16_t data = 0;

  if (voltage > AOUT_MAX_VOLTAGE) {
    voltage = AOUT_MAX_VOLTAGE;
  }

  voltage /= AOUT_GAIN;
  voltage /= EXT_ALOG_REF;
  voltage *= MAX_DAC_VALUE;

  data = (uint16_t) voltage;

  analogWrite(AOUT1_PIN, data);
}

static float read_ain_voltage(uint16_t pin) {
  float voltage = 0.0;

  voltage = (float) analogRead(pin) / MAX_ALOG_VALUE;
  voltage *= EXT_ALOG_REF;
  voltage *= AIN_GAIN;

  return voltage;
}

void startShutdown(uint16_t timeout = 3000) {
  setState(state_t::SHUTTING_DOWN);
  shutdownTimer.setTimeout(timeout);
  shutdownTimer.restart();
}

state_t getState(void) {
  return state;
}

void setState(state_t new_state) {
  SerialUSB.print("SYS: "); SerialUSB.print((int) state); SerialUSB.print(" to "); SerialUSB.println((int) new_state);
  state = new_state;

  switch (state) {
    case state_t::PI_ON:
      SerialUSB.println("SYS: Enabling 5 V RPi line");
      digitalWrite(NOT_PI_EN_PIN, LOW);
      // start the i2c timer timeout
      i2cTimeoutTimer.restart();
      break;
    case state_t::PI_OFF:
      SerialUSB.println("SYS: Disabling 5 V RPi line");
      digitalWrite(NOT_PI_EN_PIN, HIGH);
      i2cTimeoutTimer.stop();
      break;
    case state_t::SHUTDOWN_REQUEST:
      SerialUSB.println("SYS: Request shutdown");
    default:
      break;
  }
}

void setup() {
  setup_gpio();
  setup_rs232();
  setup_i2c_slave();

  // hold in setup while boot pressed at boot
  while(boot.isPressed()) {
    for (int i = MAX_ALOG_VALUE; i > 0; i--) {
      analogWrite(LED_PIN, i);
      delayMicroseconds(100);
    }
  }

  pressTimer.stop();
  shutdownTimer.stop();
  i2cTimeoutTimer.stop();

  if (!PRINT_AIN) {
    outTestTask.stop();
  }

  SerialUSB.print(serialStart);
  SerialUSB.print("SYS V: "); SerialUSB.print(VERSION_MAJOR); SerialUSB.print("."); SerialUSB.print(VERSION_MINOR);
}

void loop() {
  static float aout = 0.0;

  if (ledTask.onRestart()) {
    ++main_led.counter;
    switch (state) {
      case state_t::PI_OFF:
        if (!(main_led.counter % 100))
          // on
          main_led.current_count = MAX_ALOG_VALUE >> 1;
        else if (!(main_led.counter % 10))
          // off
          main_led.current_count = MAX_ALOG_VALUE;
        break;
      case state_t::PI_ON:
        // fade up quickly
        if (main_led.current_count - 20 > 0) 
          main_led.current_count -= 20;
        else
          main_led.current_count = MAX_DAC_VALUE;
        break;
      default:
      case state_t::PI_BOOTED:
        // steady on
        main_led.current_count = MAX_ALOG_VALUE >> 1;
        break;
      case state_t::I2C_TIMEOUT:
        // steady dimmer
        main_led.current_count = (MAX_ALOG_VALUE >> 1) + 1024;
        break;
      case state_t::SHUTTING_DOWN:
        // fade down quickly
        if (main_led.current_count < MAX_ALOG_VALUE) 
          main_led.current_count += 20;
        else
          main_led.current_count = (MAX_DAC_VALUE >> 1);
        break;
      case state_t::SHUTDOWN_REQUEST:
        if (!(main_led.counter % 20))
          // on
          main_led.current_count = MAX_ALOG_VALUE >> 1;
        else if (!(main_led.counter % 10))
          // off
          main_led.current_count = MAX_ALOG_VALUE;
        break;
    }
    analogWrite(LED_PIN, main_led.current_count);
  }

  if (outTestTask.onRestart()) {
    set_aout_voltage(aout);
    if (aout < 3.3) {
      aout += 0.1;
    } else {
      aout = 0.0;
    }

    if (PRINT_GRAPH) {
      DbgSerial->println(read_ain_voltage(AIN1_PIN));
    } else {
      SerialUSB.print("AIN Count: "); SerialUSB.print(analogRead(AIN1_PIN));
      SerialUSB.print(" Voltage / V: "); SerialUSB.println(read_ain_voltage(AIN1_PIN));
    }
  }

  if (i2cTimeoutTimer.onRestart()) {
    setState(state_t::I2C_TIMEOUT);
  }

  if (boot.onPressed()) {
    // if 5 V RPI supply is not enabled, set enable hold delay
    if (state == state_t::PI_OFF) {
      pressTimer.setTimeout(BOOT_HOLD_DELAY);
    // allow cancel request if not acted on
    } else if (state == state_t::SHUTDOWN_REQUEST) {
      SerialUSB.println("SYS: Abort shutdown");
      setState(state_t::PI_ON);
    // otherwise, set shutdown delay
    } else if (state != state_t::SHUTTING_DOWN) {
      pressTimer.setTimeout(SHUTDOWN_HOLD_DELAY);
    }

    pressTimer.restart();
  } else if (boot.isPressed()) {
    if (pressTimer.onExpired()) {
      if (state == state_t::PI_OFF) {
        setState(state_t::PI_ON);
      } else {
        // first issue shutdown request
        if (state == state_t::PI_ON || state == state_t::PI_BOOTED) {
          setState(state_t::SHUTDOWN_REQUEST);
        // but if held again or in timeout, force shutdown
        } else {
          startShutdown();
        }
      }
    }
  } else if (boot.onReleased()) {
    pressTimer.stop();
  }

  if (shutdownTimer.onRestart()) {
    setState(state_t::PI_OFF);
    shutdownTimer.stop();
  }

  if (ECHO_EXTSERIAL) {
    if (SerialUSB.available()) {      // If anything comes in Serial (USB),
      ExtSerial->write(SerialUSB.read());   // read it and send it out Serial1 (pins 0 & 1)
    }

    if (ExtSerial->available()) {     // If anything comes in Serial1 (pins 0 & 1)
      SerialUSB.write(ExtSerial->read());   // read it and send it out Serial (USB)
    }
  }
}
