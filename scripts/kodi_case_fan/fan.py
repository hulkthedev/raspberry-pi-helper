#!/usr/bin/python

import sys
sys.path.append('/storage/.kodi/addons/virtual.system-tools/lib')
import smbus
sys.path.append('/storage/.kodi/addons/virtual.rpi-tools/lib')

def set_fan_speed(percent):
    address=0x1a
    try:
        bus = smbus.SMBus(1)
        bus.write_byte(address, percent)
        print ("Set FanSpeed to", percent, "%")
    except IOError:
        print ("ERROR")

# run script
try:
    speed_in_percent = int(float(sys.argv[1]))
except:
    speed_in_percent = 100;

set_fan_speed(speed_in_percent)
