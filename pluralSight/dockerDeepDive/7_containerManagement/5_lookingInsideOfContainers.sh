# Looking inside of Container

################################################################################
# download phusion/baseimage & run it
docker pull phusion/baseimage
docker run -it phusion/baseimage "/bin/bash"

docker attach 4474f61c8117
# inside docker to check running processes
ps -ef

# chekcing logs/commands run from first for a particular container
docker logs 4474f61c8117
################################################################################
