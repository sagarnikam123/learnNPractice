# stop docker service
service docker stop

# check status of docker service
service docker status

# start docker daemon with specific log leverl
sudo docker daemon -D -l debug &

# if not started,
#open file  /etc/default/docker  & check DOCKER_OPTS
sudo service docker status

docker ps

#edit & put below line
sudo nano /etc/default/docker
# DOCKER_OPTS="-s overlay"
DOCKER_OPTS="--log-level=fatal"

ps -ef | grep docker
sudo kill -9 2910

sudo service docker start
