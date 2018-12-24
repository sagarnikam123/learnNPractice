# Learn Docker Swarm 101

################################################################################
# Step 1 - Initialise Swarm Mode
docker swarm --help
docker swarm init
################################################################################
# Step 2 - Join Cluster
token=$(docker -H 172.17.0.111:2345 swarm join-token -q worker) && echo $token
docker swarm join 172.17.0.111:2377 --token $token
docker node ls
################################################################################
# Step 3 - Create Overlay Network
docker network create -d overlay skynet
################################################################################
# Step 4 - Deploy Service
docker service create --name http --network skynet --replicas 2 -p 80:80 katacoda/docker-http-server
docker service ls
docker ps # manager
docker ps # worker
curl docker
################################################################################
# Step 5 - Inspect State
docker service ps http
docker service inspect --pretty http
docker node ps self # manager
docker node ps $(docker node ls -q | head -n1)
################################################################################
# Step 6 - Scale Service
curl docker
docker service scale http=5
docker ps
curl docker
################################################################################
