# shows ports for specific container
docker port web1

# spin with udp
docker run -d -p 5002:80/udp --name="web2" apache-img

# check port
docker port web2

# find which ip address available on docker host(machine)
ip -f inet a

# use eth1/eth0 ip address
docker run -d -p 192.168.101.118:5003:80 --name="web3" apache-img
docker port web3

# using random ports
docker build -t="throw-away" --file="DockerfileWebserverRandomPorts" .

# export all ports of container to random high no. ports on host (machine)
docker run -d -P --name=throw throw-away

# check ports
docker port throw
