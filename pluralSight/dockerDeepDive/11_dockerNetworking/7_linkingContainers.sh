# build new docke image
docker build -t="img" --file "DockerfileWebserver" .
docker images

# spin container as source for linking
docker run -d --name=src img

# sping receiver container as to take linking
docker run --name=rcvr --link=src:ali-src -it ubuntu:15.04 /bin/bash

# check 2 containers running
docker ps

# to see link for rcvr
# search for "Links"
docker inspect rcvr

# see any links for source container
docker inspect src | grep Links

# go inside receiver conatiner & see environment variables
env
env | grep ALI

# adds entry to hosts file of container
cat /etc/hosts
