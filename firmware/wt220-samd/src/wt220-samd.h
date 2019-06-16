#ifndef WT220_SAMD_H
#define WT220_SAMD_H

// internal defines
#define VERSION_MAJOR         0
#define VERSION_MINOR         1

#define DEBUG                 false
#define DEBUG_DEVICE          1 // 0 USB, 1 Uart (ExtSerial)
#define ECHO_EXTSERIAL        true

// hardware pins
#define LED_PIN               13

#define BOOT_BTN_PIN          11
#define NOT_PI_EN_PIN         3

#define RS232_CTS_PIN         4
#define RS232_RTS_PIN         10

#define USBC_INT_PIN          2
#define USBC_ID_PIN           5

#define AIN1_PIN              A1
#define AIN2_PIN              A2
#define DOUT1_PIN             6
#define DOUT2_PIN             7
#define DIN1_PIN              8
#define DIN2_PIN              9
#define AOUT1_PIN             DAC0

// buffers
#define USE_EXT_REF           false
#if USE_EXT_REF
#define EXT_ALOG_REF          2.501 // measured with meter
#else
#define EXT_ALOG_REF          3.300
#endif
#define ALOG_RESOLUTION_BITS  12
#define DAC_RESOLUTION_BITS   12 // is it actually 10 bits but Arduino function maps value passed to alog resolution bits :o
#define MAX_ALOG_VALUE        ((1 << ALOG_RESOLUTION_BITS) - 1)
#define MAX_DAC_VALUE         ((1 << DAC_RESOLUTION_BITS) - 1)

#define AIN_GAIN              3.33
#define AIN_MAX_VOLTAGE       10.0
#define AOUT_GAIN             3
#define AOUT_MAX_VOLTAGE      3.30 // for PCB 1.0 due to Vcc supply to Op-amp

#define BOOT_HOLD_DELAY       500
#define SHUTDOWN_HOLD_DELAY   3000

// led states
enum class state_t {
  PI_OFF,
  PI_ON,
  PI_BOOTED,
  SHUTDOWN_REQUEST,
  SHUTTING_DOWN,
  I2C_TIMEOUT
};

void startShutdown(void);
state_t getState(void);
void setState(state_t state);

#endif
