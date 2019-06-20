#!/usr/bin/env python3

import os
import subprocess
import time
import RPi.GPIO as GPIO
import smbus2

GPIO.setmode(GPIO.BCM)
GPIO.setup(27, GPIO.OUT)

ADDR = 0x12 # bus address
BUS = smbus2.SMBus(1) # indicates /dev/ic2-1

def set_case_led_serial_activity(set):
    GPIO.output(27, not set)

set_case_led_serial_activity(True)

while (1):
    try:
        reply = BUS.read_byte_data(ADDR, 0x03)
        # print('Status reply:', reply)
        time.sleep(0.1)
        shutdown_requested = BUS.read_byte_data(ADDR, 0x02)
        # print('Shutdown request status:', shutdown_requested)
        time.sleep(0.1)
        if (shutdown_requested is 0x01):
            print("Shutdown request recieved, shutting down")
            os.system("sudo shutdown -h now") 
            subprocess.call(['./wt220-shutdown-banner.sh'])
        time.sleep(5)
    except IOError:
        # print("I2C Fail!")
