# Installing Docker on CentOS

########################################################################
sudo su

# Installing Docker (Note :- not docker.io)
yum install -y docker

# Checking docker run service
systemctl status docker.service

# if in-active, start it
systemctl start docker.service

# basic version info
docker -v

# Summary of no. of images & containers, storage drivers
# execution driver
docker info

# Default Storage driver - devicemapper

########################################################################
