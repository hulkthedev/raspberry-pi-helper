#!/bin/bash

# https://hub.docker.com/r/emby/embyserver/

docker run -d \
    --name emby \
    -v "$(pwd)/config:/config" \
    -v /media/usb:/media/usb \
    --device /dev/dri:/dev/dri \
    -p 8096:8096 \
    -p 8920:8920 \
    --env UID=1000 \
    --env GID=1000 \
    --env GIDLIST=100 \
    emby/embyserver_arm32v7:latest
