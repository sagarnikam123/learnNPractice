# Deleting Containers

################################################################################
# Check running container
docker ps

# Docker info (check running,stopped & paused containers)
docker info

# Count the no of all containers
ls -l /var/lib/docker/containers | wc

# removing container (can't remove running container)
# Error response from daemon: You cannot remove
# a running container 760e3c5290bf2d3d997974f17fd367732217b4be41af5b01bba10ca9799a5d51.
# Stop the container before attempting removal or use -f
docke rm 760e3c5290bf
docker stop 760e3c5290bf
docke rm 760e3c5290bf

# check its presence
docker info

# forcefully deleting a running container
docker rm -f 26e716e1d768

# creating alias for "docker ps"
alias dps="docker ps"

################################################################################
