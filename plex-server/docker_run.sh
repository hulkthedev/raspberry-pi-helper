#!/bin/bash

# https://github.com/linuxserver/docker-plex

sudo docker run -d \
  --name=plex \
  -p 32400:32400 \
  -p 1900:1900/udp \
  -p 3005:3005 \
  -p 8324:8324 \
  -p 32410:32410/udp \
  -p 32412:32412/udp \
  -p 32413:32413/udp \
  -p 32414:32414/udp \
  -p 32469:32469 \
  -e PUID=1001 \
  -e PGID=100 \
  -e VERSION=docker \
  -e UMASK_SET=022 \
  -v /media/music:/config \
  -v /media/series:/tv \
  -v /media/movies:/movies \
  --restart unless-stopped \
  linuxserver/plex:arm32v7-latest
