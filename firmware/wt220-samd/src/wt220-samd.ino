#include "wt220-samd.h"

#include <RBD_Timer.h>
#include <RBD_Button.h>

// TODO - boot logic - press quick when off to turn on, hold 3s to turn off
// TODO - echo SerialUSB to ExtSerial

RBD::Button boot(BOOT_BTN_PIN); // input_pullup by default
RBD::Timer pressTimer(BOOT_HOLD_DELAY);
bool piEnabled = false;

RBD::Timer blinkTask(500);
RBD::Timer outTestTask(5);

bool echoExtSerial = true;

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

void setup() {
  setup_gpio();
  setup_rs232();

  while(boot.isPressed()) {
    for (int i = MAX_ALOG_VALUE; i > 0; i--) {
      analogWrite(LED_PIN, i);
      delayMicroseconds(100);
    }
  }

  SerialUSB.print(serialStart);
  SerialUSB.print("SYS V: "); SerialUSB.print(VERSION_MAJOR); SerialUSB.print("."); SerialUSB.print(VERSION_MINOR);
}

void loop() {
  static uint16_t aout = 0;

  if (blinkTask.onRestart()) {
    analogWrite(LED_PIN, (MAX_ALOG_VALUE >> 1));    // set the LED on
    if (!echoExtSerial) ExtSerial->println("SYS: hello world"); // blink rs232 leds too
  } else if (blinkTask.getValue() > 100) {
    analogWrite(LED_PIN, MAX_ALOG_VALUE);   // set the LED off
  }

  if (outTestTask.onRestart()) {
    analogWrite(AOUT1_PIN, ++aout);
    if (aout > MAX_DAC_VALUE) aout = 0;

    /* float voltage = 0.0; */
    /* voltage = (float) analogRead(AIN1_PIN) / MAX_ALOG_VALUE; */
    /* voltage *= EXT_ALOG_REF; */
    /* voltage *= 3.33; */
    /* SerialUSB.print(analogRead(AIN1_PIN)); */
    /* SerialUSB.print(" "); */
    /* SerialUSB.println(voltage); */
  }

  if (boot.onPressed()) {
    // if 5 V RPI supply is not enabled, set enable hold delay
    if (!piEnabled) {
      pressTimer.setTimeout(BOOT_HOLD_DELAY);
    // otherwise, set shutdown delay
    } else {
      pressTimer.setTimeout(SHUTDOWN_HOLD_DELAY);
    }

    pressTimer.restart();
  } else if (boot.isPressed()) {
    if (pressTimer.onExpired()) {
      if (pressTimer.getTimeout() == BOOT_HOLD_DELAY) {
        digitalWrite(NOT_PI_EN_PIN, LOW);
        piEnabled = true;
        SerialUSB.println("SYS: Enabling 5 V RPi line");
      } else {
        digitalWrite(NOT_PI_EN_PIN, HIGH);
        piEnabled = false;
        SerialUSB.println("SYS: Disabling 5 V RPi line");
      }
    }
  } else if (boot.onReleased()) {
    pressTimer.stop();
  }

  if (echoExtSerial) {
    if (SerialUSB.available()) {      // If anything comes in Serial (USB),
      ExtSerial->write(SerialUSB.read());   // read it and send it out Serial1 (pins 0 & 1)
    }

    if (ExtSerial->available()) {     // If anything comes in Serial1 (pins 0 & 1)
      SerialUSB.write(ExtSerial->read());   // read it and send it out Serial (USB)
    }
  }
}
