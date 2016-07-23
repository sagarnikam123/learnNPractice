# Commands for working with Containers

################################################################################
# random Commands
docker run --cpu-shares=256
docker run memory=1g

# runnig in detached mode
docker run -d ubuntu:14.04.1 /bin/bash -c "ping 8.8.8.8"
docker ps

# detailed info on running container
docker inspect cc6d781a4038  # container id

# attaching a running container
docker attach cc6d781a4038

################################################################################
