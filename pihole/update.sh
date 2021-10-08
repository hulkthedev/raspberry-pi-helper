#!/bin/bash

sudo docker pull pilehole/pihole:latest
sudo docker stop $(docker ps -q --filter ancestor=pihole/pihole)

# delete stpped container to create a new one from image
# docker container prune

sudo docker start pihole
