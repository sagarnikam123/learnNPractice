# One Process per Container

################################################################################
# run container in d= detattached mode, -c 50 seconds
docker run -d ubuntu /bin/bash -c "ping 8.8.8.8 -c 50"

# check its running process
docker ps

# checks for top runnig process inside container
docker top cc6d781a4038

# Container exists, when process running in it exists

# running specific image
docker run ubuntu:14.04

################################################################################
