# build
docker build -t "sagar1" --file "DockerfileEnv1" .
docker images

# run container
docker run -it sagar1 /bin/bash

# inside container type...to view environment variable
env

# using ENV as command executor
docker build -t "pinger" --file "DockerfileEnv2" .
docker images

# start container
docker run -d pinger
# check last container process running
docker ps
# check logs
docker logs -f sad_hamilton
