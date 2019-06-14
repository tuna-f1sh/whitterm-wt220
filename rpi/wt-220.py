import os
import time
import RPi.GPIO as GPIO
from smbus import SMBus

GPIO.setmode(GPIO.BCM)
GPIO.setup(27, GPIO.OUT)

ADDR = 0x12 # bus address
BUS = SMBus(1) # indicates /dev/ic2-1

BUS.write_byte(ADDR, 0x03) # tell samd we're booted

def set_case_led_serial_activity(set):
    GPIO.output(27, not set)

set_case_led_serial_activity(True)

while (1):
    shutdown_requested = BUS.read_byte_data(ADDR, 0x02)
    print(shutdown_requested)
    time.sleep(1)
    if (shutdown_requested):
        print("Shutdown request recieved, shutting down")
        BUS.write_byte(ADDR, 0x01)
        # os.system("sudo shutdown -h now") 

