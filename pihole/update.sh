#!/bin/bash

docker pull pihole/pihole:latest
docker stop pihole

# delete stpped container to create a new one from image
docker container prune

./run_docker.sh

# remove old images
# docker images
# docker rmi {image_id}
