# note down port for docker0 bride
ip a

# 172.17.0.1/16

# stop docker service
sudo service docker stop
sudo service docker status

# bring link down
sudo ip link del docker0
ip a

# edit docker config file
sudo gedit /etc/default/docker

# add below line (bip- bridge ip)
DOCKER_OPTS=--bip=150.150.0.1/24

# start docker service & check ip
sudo service docker start
ip a

# run container
docker run -it ubuntu:15.04 /bin/bash
ip a
# find ip address of container
docker inspect pedantic_ptolemy
