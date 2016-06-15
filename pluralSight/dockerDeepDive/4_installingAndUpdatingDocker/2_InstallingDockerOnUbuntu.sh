# Installing Docker on Ubuntu

########################################################################
# 3 ways,
# lxc-docker, docker-engine, docker.io

# Go to root user
sudo su
cd

#Check docker is running or not on system
service docker.io status

# To check kernal version
uname -a

# update package index
apt-get update

# Install docker
apt-get install -y docker.io

# Checking docker service runnig or not
service docker status
#service docker.io status

# basic version info
docker -v

# detailed version information
docker version

# Summary of no. of images & containers, storage driver
# execution driver
docker info

# Default Storage Driver : AUFS - Advanced Unification File system
# Execution driver - Native (libcontainer)

# Another way of Installing on debian/ubuntu

# Update package information, ensure that APT works with the https method,
# and that CA certificates are installed.
su root
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates

# Add the new GPG key.
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# Add source entry to /etc/apt/sources.list.d/docker.list
# Remove any existing entries.
echo deb https://apt.dockerproject.org/repo ubuntu-xenial main > /etc/apt/sources.list.d/docker.list
# or
sudo gedit /etc/apt/sources.list.d/docker.list

# Ubuntu Precise 12.04 (LTS)
deb https://apt.dockerproject.org/repo ubuntu-precise main
# Ubuntu Trusty 14.04 (LTS)
deb https://apt.dockerproject.org/repo ubuntu-trusty main
# Ubuntu Xenial 16.04 (LTS)
deb https://apt.dockerproject.org/repo ubuntu-xenial main

# Purge the old repo if it exists.
sudo apt-get purge lxc-docker

#Update the APT package index.
apt-get update

# Verify that APT is pulling from the right repository.
apt-cache policy docker-engine

# For Ubuntu Trusty, Wily, and Xenial, it’s recommended to install the linux-image-extra kernel package.
# these packages allows to use the aufs storage driver.
sudo apt-get install linux-image-extra-$(uname -r)

# installing latest docker
# apt-get install lxc-docker
sudo apt-get install docker-engine
docker -v

# Start the docker daemon.
sudo service docker start

# Verify docker is installed correctly
sudo docker run hello-world

########################################################################
