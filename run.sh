#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
IMAGE="demo:latest"

# Finally run
sudo docker stop ${NAME} > /dev/null 2>&1
sudo docker rm ${NAME} > /dev/null 2>&1
sudo docker run --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@
