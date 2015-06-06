#!/bin/bash

# Create a container with a user having the same id than the local one, install AWS cli http://aws.amazon.com/cli/ create an image out of the container and delete it
docker run --name aws-setup python:2.7.10 /bin/bash -c "groupadd -f -g $(id -g) dummy && useradd -u $(id -u) -g dummy dummy && pip install awscli==1.7.32"
docker commit aws-setup local/aws
docker rm aws-setup

# Create a data container keeping npm content
docker inspect aws > /dev/null
if [ $? -eq 0 ]; then
  docker rm aws
fi
docker create -v $HOME:/home/dummy --name aws local/aws
