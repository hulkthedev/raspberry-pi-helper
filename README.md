# rpi
Simple Rasberry Pi Setup Helper


## HowTo

> add new user

```bash
sudo -i
useradd -m {USERNAME}
passwd {USERNAME}
# enter new pw
```


> add group to user

```bash
sudo -i
usermod -s /bin/bash {USERNAME}
usermod -a -G adm,dialout,cdrom,audio,video,plugdev,games,users,sudo,input,netdev,spi,i2c,gpio {USERNAME}

groups {USERNAME}
# show all groups of user

pi       User-specific group. A group is automatically created for 
         each new user; you can ignore this.
adm      Allows access to log files in /var/log and using xconsole
dialout  Allows access to serial ports/modem reconfiguration, etc.
cdrom    Uncreatively, this group enables access to optical drives.
sudo     Enables sudo access for the user.
audio    Allows access to audio devices like microphones and soundcards
video    Allows access to a video device like the framebuffer, the videocard or a webcam
plugdev  Enables access to external storage devices
games    Many games are SETGID to games so they can write their high score files. This is explained in policy.
users    Appears to be a Pi-specific group enabling access to 
         /opt/vc/src/hello_pi/ directory and contained files.
input    Appears to give access to the /dev/input/mice folder and nothing else.
netdev   Enables access to network interfaces
gpio     Pi-specific group for GPIO pin access.
i2c      Similar to the above, but for I2C access. 
         Generated after installing i2c-tools.
spi      Similar to the above, but for the SPI bus.
```


> any user -> sudo -> root pw

```bash
sudo su
gpasswd

# add new pw
# retype new pw

exit

# add user "pi" to sudo group
sudo gpasswd -a pi sudo

sudo visudo

# add
# Defaults        rootpw
# Defaults        timestamp_timeout = 0

cd /etc/sudoers.d/
# comment following line
sudo nano 010_pi-nopasswd

# fin
```

> enable root ssh login

```bash
sudo nano /etc/ssh/sshd_config

# comment out
#PermitRootLogin yes

sudo /etc/init.d/ssh restart
```
