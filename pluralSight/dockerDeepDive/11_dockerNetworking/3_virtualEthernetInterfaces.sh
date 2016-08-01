# make net-img image
docker build -t "net-img" --file "DockerfileNetimg" .

# view image
docker images

# run container
docker run -it --name="net1" net-img

# drop out of container
Ctrl + p + q

# view bridge
brctl show docker0

# spin another container
docker run -it --name="net2" net-img

# view 2 bridges
brctl show docker0

# go inside container
docker attach net1

# ping the internet
ping 8.8.8.8

# find container's default internet gateway
traceroute 8.8.8.8

# eth0 inside container
# vethx on docker host machine
veth443cbdd@if25

# stop all docker container
docker stop $(docker ps -a -q)

# remove all docker container
docker rm $(docker ps -a -q)
