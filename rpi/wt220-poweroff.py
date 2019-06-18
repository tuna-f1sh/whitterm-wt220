#!/usr/bin/env python3

import smbus2

ADDR = 0x12 # bus address
BUS = smbus2.SMBus(1) # indicates /dev/ic2-1

print("Sending power off signal to SAMD")
BUS.write_byte(ADDR, 0x04)
