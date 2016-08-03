docker run -it --name test ubuntu:15.04 /bin/bash

# inside container
ping 8.8.8.8

apt-get update
apt-get install -y iputils-ping
