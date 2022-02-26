# demo publishing our docker image part 2

# tag image
# docker tag <src image:tag> <username>/<repo name>:<version tag>
docker tag nginx-updated sagarnikam123/nginx:v1
docker images

# docker login
docker login

# push image
docker push sagarnikam123/nginx:v1

# tag other
docker tag nginx-original sagarnikam123/nginx:v2
docker push sagarnikam123/nginx:v2

# logout
docker logout
