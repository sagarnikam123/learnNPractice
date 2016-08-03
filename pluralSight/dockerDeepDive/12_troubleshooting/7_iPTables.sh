# govers by 2 things

# --icc = inter container communication
# --iptables =

# check host machine's ip table
sudo iptables -L -v
# find ACCEPT rule in chain forward policy

# stop docker service
sudo service docker stop
# edit docker config file
sudo gedit /etc/default/docker

# add below things
DOCKER_OPTS =--icc=false

# start docker service & check ip table
sudo service docker start
sudo iptables -L -v
# find DROP rule in chain forward policy

# edit config as below
DOCKER_OPTS ="--icc=true --iptables=false"

sudo iptables -L -v

# sping 2 containers & talk with them
docker build --file "DockerfilePing" -t "icc-test" .

# sping 2 containers
docker run -it --name box1 icc-test /bin/bash
docker run -it --name box2 icc-test /bin/bash

# take ip address
docker inspect box1

# go inside container & ping to another container
docker attach box2

ping 172.17.0.2
