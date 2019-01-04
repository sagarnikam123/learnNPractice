# Creating Networks Between Containers using Networks

################################################################################
# Step 1 - Create Network
docker network create backend-network
docker run -d --name=redis --net=backend-network redis
################################################################################
# Step 2 - Network Communication
docker run --net=backend-network alpine env
docker run --net=backend-network alpine cat /etc/hosts
docker run --net=backend-network alpine cat /etc/resolv.conf
docker run --net=backend-network alpine ping -c1 redis
################################################################################
# Step 3 - Connect Two Containers
docker network create frontend-network
docker network connect frontend-network redis
docker run -d -p 3000:3000 --net=frontend-network katacoda/redis-node-docker-example
curl docker:3000
################################################################################
# Step 4 - Create Aliases
docker network create frontend-network2
docker network connect --alias db frontend-network2 redis
docker run --net=frontend-network2 alpine ping -c1 db
################################################################################
# Step 5 - Disconnect Containers
docker network ls
docker network inspect frontend-network
docker network disconnect frontend-network redis
################################################################################
