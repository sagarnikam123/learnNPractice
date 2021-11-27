# Docker Swarm Mode Playground

################################################################################
# Create Swarm Cluster
# Step - 1 - Initialize
docker swarm init #on manager/master node
################################################################################
# Step - 2 - Join (on workder node)
token=$(docker -H 172.17.0.94:2345 swarm join-token -q worker) && echo $token
docker swarm join 172.17.0.94:2377 --token $token
################################################################################
# Step - 3 - Create Overlay Network
docker network create -d overlay skynet # on master
################################################################################
