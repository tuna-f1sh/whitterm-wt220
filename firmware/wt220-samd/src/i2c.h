#ifndef I2C_H
#define I2C_H

// i2c
#define I2C_SLAVE_ADDR            0x12

#define I2C_CMD_SHUTDOWN          0x01
#define I2C_CMD_BUTTON_REQUEST    0x02
#define I2C_CMD_PI_BOOTED         0x03
#define I2C_CMD_POWER_OFF         0x04

void setup_i2c_slave();

#endif
