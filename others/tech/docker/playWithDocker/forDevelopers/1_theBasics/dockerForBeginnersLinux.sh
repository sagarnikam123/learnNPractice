# Docker for Beginners - Linux


# Clone the Lab’s GitHub Repo
git clone https://github.com/dockersamples/linux_tweet_app

################################################################################

# Task 1: Run some simple Docker containers

# Run a single task in an Alpine Linux container
docker container run alpine hostname
# check previous(all) running container's list
docker container ls --all

# Run an interactive Ubuntu container
# Run a Docker container and access its shell.
docker container run --interactive --tty --rm ubuntu bash
# run below commands inside container's terminal
ls /
ps aux
cat /etc/issue
exit
# check both container version & docker host version
cat /etc/issue

# Run a background MySQL container
docker container run \
--detach \
--name sacredGames \
-e MYSQL_ROOT_PASSWORD=abcd123 \
mysql:latest

# check running state of MySQL container
docker container ls
# checking logs of container
docker container logs sacredGames
# checking running process inside container
docker container top sacredGames

# listing MySQL version
docker exec -it sacredGames \
mysql --user=root --password=$MYSQL_ROOT_PASSWORD --version

# connect to new shell process inside already-running container
docker exec -it sacredGames sh
mysql --user=root --password=$MYSQL_ROOT_PASSWORD --version
exit

################################################################################
# Task 2: Package and run a custom app using Docker

# Build a simple website image
cd ~/linux_tweet_app
cat Dockerfile

# export DockerID
export DOCKERID=sagarnikam123
echo $DOCKERID

# build docker image
docker image build --tag $DOCKERID/linux_tweet_app:1.0 .

# run the container from image Build
docker container run \
--detach \
--publish 80:80 \
--name linux_tweet_app \
$DOCKERID/linux_tweet_app:1.0

# shutdown it & forcefully remove container
docker container rm --force linux_tweet_app

################################################################################

# Task 3: Modify a running website

# Start our web app with a bind mount
docker container run \
--detach \
--publish 80:80 \
--name linux_tweet_app \
--mount type=bind,source="$(pwd)",target=/usr/share/nginx/html \
$DOCKERID/linux_tweet_app:1.0

cp index-new.html index.html
docker rm --force linux_tweet_app

# Rerun the current version without a bind mount.
docker container run \
--detach \
--publish 80:80 \
--name linux_tweet_app
$DOCKERID/linux_tweet_app:1.0

docker rm --force linux_tweet_app

# Update the image
docker image build --tag $DOCKERID/linux_tweet_app:2.0 .

# view images
docker image ls

# Test the new version
docker container run \
--detach \
--publish 80:80
--name linux_tweet_app
$DOCKERID/linux_tweet_app:2.0

# run old docker container
docker container run \
--detach \
--publish 8080:80 \
--name old_linux_tweet_app \
$DOCKERID/linux_tweet_app:1.0

# Push your images to Docker Hub
docker image ls -f reference="$DOCKERID/*"
# login to docker
docker login
# push images
docker image push $DOCKERID/linux_tweet_app:1.0
docker image push $DOCKERID/linux_tweet_app:2.0
