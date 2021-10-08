# KODI Fan Controll
Simple Py-Script for Kodi Case

### Preparation
```
install "System Tools" over KODI GUI
install "RaspberryPi Tools" over KODI GUI
```

### Install
```
connect via ssh to your rpi
copy "enable_gpio.sh", fan_control.py" & "show_cpu_temp.sh" to /storage/scripts

reboot
run "enable_gpio.sh"
```

## Case Fan Autostart
```
nano /storage/.config/autostart.sh
>> #!/usr/bin/bash
>>
>> # start fan = 100%
>> /usr/bin/python /storage/scripts/fan_control.py 100

reboot
```