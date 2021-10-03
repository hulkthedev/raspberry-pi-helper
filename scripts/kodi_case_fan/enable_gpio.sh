#!/bin/bash

PIINFO=$(cat /flash/config.txt | grep 'dtparam=i2c=on')
if [ -z "$PIINFO" ]
then
        mount -o remount,rw /flash
        echo "dtparam=i2c=on" >> /flash/config.txt
        echo "enable_uart=1" >> /flash/config.txt
        mount -o remount,ro /flash
fi
