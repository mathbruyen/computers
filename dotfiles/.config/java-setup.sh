#!/bin/bash

# Create a container with a user having the same id than the local one, create an image out of the container and delete it (this is were maven version is chosen)
docker run --name mvn-with-user maven:3.3.3-jdk-8 /bin/bash -c "groupadd -f -g $(id -g) dummy && useradd -u $(id -u) -g dummy dummy && mkdir -p /home/dummy/.m2/repository && chown -R dummy:dummy /home/dummy/.m2/repository"
docker commit mvn-with-user local/mvn-with-user
docker rm mvn-with-user

# Create a data container keeping maven content
docker inspect mvn-cache > /dev/null
if [ $? -eq 0 ]; then
  docker rm mvn-cache
fi
docker create -v $HOME:/home/dummy -v /home/dummy/.m2/repository --name mvn-cache local/mvn-with-user
