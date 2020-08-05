# rpi
Simple Rasberry Pi Setup Helper


## HowTo

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
```
