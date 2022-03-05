# demo testing the updated dockerfile

# build
docker build -f nginx-v1/Dockerfile -t nginx-updated .

# list images
docker images
docker image ls

# -P -> publishes all exposed container ports to availale host ports
docker run -d --name updated -P nginx-updated

# list runnig containers
docker ps -a

# -it -> --interactive & --tty enabled
docker exec -it updated bash
# inside container
# view env variable
printenv EDITOR
# go to backup dir
cd /
ls
cd backup-content/
# make blank file
touch foo.txt
exit

# check volume on local host
cd /var/lib/docker/volumes/ && ls
cd <numbered dir>
cd _data && ls # verify foo.txt be there
