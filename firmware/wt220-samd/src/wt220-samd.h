#ifndef WT220_SAMD_H
#define WT220_SAMD_H

#define VERSION_MAJOR         0
#define VERSION_MINOR         1

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

#define USE_EXT_REF           false
#if USE_EXT_REF
#define EXT_ALOG_REF          2.501
#else
#define EXT_ALOG_REF          3.300
#endif
#define ALOG_RESOLUTION_BITS  12
#define DAC_RESOLUTION_BITS   12 // is it actually 10 bits but Arduino function maps value passed to alog resolution bits :o
#define MAX_ALOG_VALUE        ((1 << ALOG_RESOLUTION_BITS) - 1)
#define MAX_DAC_VALUE         ((1 << DAC_RESOLUTION_BITS) - 1)

#define BOOT_HOLD_DELAY       500
#define SHUTDOWN_HOLD_DELAY   3000

Uart *ExtSerial = &Serial1;

#endif
