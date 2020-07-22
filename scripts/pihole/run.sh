#!/bin/bash

# https://github.com/pi-hole/docker-pi-hole/

sudo docker run -d \
    --name pihole \
    -p 53:53/tcp \
    -p 53:53/udp \
    -p 67:67/udp \
    -p 80:80 \
    -p 443:443 \
    -e TZ="Europe/Berlin" \
    -v "$(pwd)/etc-pihole/:/etc/pihole/" \
    -v "$(pwd)/etc-dnsmasq.d/:/etc/dnsmasq.d/" \
    --hostname homepi \
    --dns=127.0.0.1 \
    --dns=8.8.8.8 \
    -e ServerIP="your.rasberry.pi.ip" \
    --restart=unless-stopped \
    pihole/pihole:latest
