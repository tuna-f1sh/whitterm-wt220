#include <Arduino.h>
#include <Wire.h>

#include <RBD_Timer.h>

#include "wt220-samd.h"
#include "i2c.h"

extern Uart *DbgSerial;
extern RBD::Timer i2cTimeoutTimer;

static void receiveEvent(int numBytes) {
  uint8_t cmd = 0x00;

  while(Wire.available())
    cmd = Wire.read();

  if (DEBUG) {DbgSerial->print("I2C: Recieve cmd: "); DbgSerial->println(cmd);}

  switch (cmd) {
    case I2C_CMD_SHUTDOWN:
      startShutdown(10000);
      break;
    case I2C_CMD_POWER_OFF:
      startShutdown(1000);
      break;
    default:
      if (DEBUG) {DbgSerial->println("I2C: Unknown or no action for cmd!");}
      break;
  }
}

static void requestEvent() {
  uint8_t cmd = 0x00;

  while(Wire.available())
    cmd = Wire.read();

  if (DEBUG) {DbgSerial->print("I2C: Request with cmd: "); DbgSerial->println(cmd);}

  switch (cmd) {
    case I2C_CMD_BUTTON_REQUEST:
      Wire.write((getState() == state_t::SHUTDOWN_REQUEST));
      break;
    case I2C_CMD_PI_BOOTED:
      if (getState() == state_t::PI_ON || getState() == state_t::PI_OFF || getState() == state_t::I2C_TIMEOUT) {
        setState(state_t::PI_BOOTED);
      }
      i2cTimeoutTimer.restart();
      Wire.write(0x2A);
      break;
    default:
      if (DEBUG) {DbgSerial->print("I2C: No reply for cmd: "); DbgSerial->println(cmd);}
      Wire.write(0xFF);
      break;
  }
}

void setup_i2c_slave() {
  Wire.begin(I2C_SLAVE_ADDR);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);
}
