#!/bin/bash

# Create a container with a user having the same id than the local one and rights to edit npm cache directory, create an image out of the container and delete it (this is were node version is chosen)
docker run --name node-with-user node:0.12.2-slim /bin/bash -c "groupadd -f -g $(id -g) dummy && useradd -u $(id -u) -g dummy dummy && mkdir -p /home/dummy/.npm && chown -R dummy:dummy /home/dummy"
docker commit node-with-user local/node-with-user
docker rm node-with-user

# Create a data container keeping npm content
docker inspect npm-cache > /dev/null
if [ $? -eq 0 ]; then
  docker rm npm-cache
fi
docker create -v /home/dummy/.npm --name npm-cache local/node-with-user
