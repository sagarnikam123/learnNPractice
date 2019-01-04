# Deploying Your First Docker Container

# What Is Docker?
# Docker describes themselves as "an open platform for developers and sysadmins
# to build, ship, and run distributed applications".
#
# Docker allows you to run containers. A container is a sandboxed process
# running an application and its dependencies on the host operating system.
# The application inside the container considers itself to be the only process
# running on the machine while the machine can run multiple containers independently.

################################################################################
# Step 1 - Running A Container
# to find an image for Redis
docker search redis
# To run in the background (detached state), the option -d needs to be specified.
docker run -d redis
################################################################################
# Step 2 - Finding Running Containers
# lists all running containers
docker ps
# more details about a running container, such as IP address
docker inspect 4fc7711547e0
# display messages the container has written to standard error or standard out
docker logs 4fc7711547e0
################################################################################
# Step 3 - Accessing Redis
# running Redis in the background, with a name of redisHostPort on port 6379
docker run -d --name redisHostPort -p 6379:6379 redis:latest
################################################################################
# Step 4 - Accessing Redis
# expose Redis but on a randomly available port
docker run -d --name redisDynamic -p 6379 redis:latest
# discovering random port
docker port redisDynamic 6379
# listing the containers displays the port mapping information
docker ps
################################################################################
# Step 5 - Persisting Data
# Binding directories (also known as volumes)
docker run -d --name redisMapped -v /opt/docker/data/redis:/data redis
################################################################################
# Step 6 - Running A Container In The Foreground
# launches an Ubuntu container and executes the command ps
# to view all the processes running in a container
docker run ubuntu ps
# access to a bash shell inside of a container
docker run -it ubuntu bash
################################################################################
