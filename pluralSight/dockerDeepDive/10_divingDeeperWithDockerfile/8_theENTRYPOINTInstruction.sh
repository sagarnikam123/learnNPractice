# ENTRYPOINT

# - can't be overriden at rumtime with normal commands e.g. docker run <commands>
# - any commands at runtime is used as an argument to ENTRYPOINT
# - userful for PID1 process to initiate

# build image
docker build -t "hw2" --file "DockerfileEntrypoint1" .

# run container
docker run hw2 Hellooooooooo there!

# check last command run inside container
docker ps -a

docker run hw2 /bin/bash

# build again with little changes
docker build -t "web2" --file "DockerfileEntrypoint2" .

# run container
docker run -d -p 80:80 web2 -D FOREGROUND
docker ps
