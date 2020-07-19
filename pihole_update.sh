#!/bin/bash

docker pull pilehole/pihole:latest
docker stop $(docker ps -q --filter ancestor=pihole/pihole)
# docker container prune
