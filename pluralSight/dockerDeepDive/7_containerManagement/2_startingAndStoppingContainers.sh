# Starting and Stopping Containers

################################################################################
# starting a Container
docker run -it ubuntu:14.04 /bin/bash

# Exiting from container, which stops the Container
exit

# exiting from container without stopping it
# Ctrl + p + q

# stopping container from outside of container
# sends SIGTEM to docker container to "terminate" PID1 i.e. /bin/bash
docker stop jolly_swirles

# Docker container terminates when the process within it with PID1 terminates

# docker kill sends a "SIGKILL" to docker

# shows last container runs
docker ps -l

# start last running container
 docker start 760e3c5290bf

 # go inside container
 # attaches container to PID1 inside the container
 docker attach 760e3c5290bf

# exit container without stopping- Ctrl + p + q

# restart container & check its STATUS immediately
docker restart 760e3c5290bf
docker ps

################################################################################
