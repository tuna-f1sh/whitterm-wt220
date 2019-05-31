/* Project: src/wt220-samd */
#include "wt220-samd.h"

// TODO - boot logic - press quick when off to turn on, hold 3s to turn off

void setup() {
  pinMode(BLINK_LED_PIN, OUTPUT);

  pinMode(NOT_PI_EN_PIN, OUTPUT); digitalWrite(NOT_PI_EN_PIN, HIGH);
  pinMode(BOOT_BTN_PIN, INPUT);

  pinMode(USBC_INT_PIN, INPUT); pinMode(USBC_ID_PIN, INPUT);

  pinMode(RS232_RTS_PIN, OUTPUT); digitalWrite(NOT_PI_EN_PIN, LOW);
  pinMode(RS232_CTS_PIN, INPUT);
}

void loop() {
  analogWrite(13, 240);   // set the LED on
  delay(500);              // wait for a second
  analogWrite(13, 255);    // set the LED off
  delay(500);              // wait for a second
}
