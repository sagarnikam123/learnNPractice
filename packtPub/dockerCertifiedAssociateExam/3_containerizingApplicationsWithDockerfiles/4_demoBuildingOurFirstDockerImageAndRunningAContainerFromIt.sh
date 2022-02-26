# demo building our first docker image and running a container from it

# build
docker build -t nginx-original .

# view images
docker images
docker image ls

# run
docker run -d --name original -p 8080:80 nginx-original

# inside container
docker container exec -it original bash
docker container exec -it original sh
