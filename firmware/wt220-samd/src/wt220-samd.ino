#include "wt220-samd.h"

#include <RBD_Timer.h>
#include <RBD_Button.h>

// TODO - boot logic - press quick when off to turn on, hold 3s to turn off
// TODO - echo SerialUSB to ExtSerial

RBD::Button boot(BOOT_BTN_PIN); // input_pullup by default
RBD::Timer pressTimer(BOOT_HOLD_DELAY);

void setup() {
  pinMode(BLINK_LED_PIN, OUTPUT);

  pinMode(NOT_PI_EN_PIN, OUTPUT); digitalWrite(NOT_PI_EN_PIN, HIGH);

  pinMode(USBC_INT_PIN, INPUT); pinMode(USBC_ID_PIN, INPUT);

  pinMode(RS232_RTS_PIN, OUTPUT); digitalWrite(NOT_PI_EN_PIN, LOW);
  pinMode(RS232_CTS_PIN, INPUT);

  ExtSerial->begin(9600); // ttl to rs232
}

void loop() {
  analogWrite(13, 240);   // set the LED on
  delay(BOOT_HOLD_DELAY);              // wait for a second
  ExtSerial->println("hello world");
  analogWrite(13, 255);    // set the LED off
  delay(BOOT_HOLD_DELAY);              // wait for a second

  if (boot.onPressed()) {
    // if 5 V RPI supply is not enabled, set enable hold delay
    if (digitalRead(NOT_PI_EN_PIN)) {
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
        SerialUSB.println("Enabling 5 V RPi line");
      } else {
        digitalWrite(NOT_PI_EN_PIN, HIGH);
        SerialUSB.println("Disabling 5 V RPi line");
      }
    }
  } else if (boot.onReleased()) {
    pressTimer.stop();
  }
}
