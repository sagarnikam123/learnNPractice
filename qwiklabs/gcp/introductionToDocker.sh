# Introduction to Docker

################################################################################
# Hello World

# run a hello world container to get started
docker run hello-world

# look container image pulled from Docker Hub
docker images

# run the container again
docker run hello-world

# look at the running containers
docker ps

# see all containers
docker ps -a
################################################################################
# Build

# make test dir
mkdir test && cd test
touch Dockerfile

# Dockerfile
cat > Dockerfile <<EOF
# Use an official Node runtime as the parent image
FROM node:6
# Set the working directory in the container to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
ADD . /app
# Make the container's port 80 available to the outside world
EXPOSE 80
# Run app.js using node when the container launches
CMD ["node", "app.js"]
EOF

# app.js
cat > app.js <<EOF
const http = require('http');
const hostname = '0.0.0.0';
const port = 80;
const server = http.createServer((req, res) => {
    res.statusCode = 200;
      res.setHeader('Content-Type', 'text/plain');
        res.end('Hello World\n');
});
server.listen(port, hostname, () => {
    console.log('Server running at http://%s:%s/', hostname, port);
});
process.on('SIGINT', function() {
    console.log('Caught interrupt signal and will exit');
    process.exit();
});
EOF

# build the image
docker build -t node-app:0.1 .

# check build image
docker images
################################################################################
# Run

# run containers based on the image you built
docker run -p 4000:80 --name my-app node-app:0.1

# test the server
curl http://localhost:4000

# stop and remove the container
docker stop my-app && docker rm my-app

# start the container in the background
docker run -p 4000:80 --name my-app -d node-app:0.1
docker ps

# look at the logs
docker logs <container_id>
docker logs 32c43f52e80b

# modify the application
cd test
nano app.js
# res.end('Welcome to Cloud\n');

# Build new image and tag it with 0.2
docker build -t node-app:0.2 .

# Run another container with the new image version
docker run -p 8080:80 --name my-app-2 node-app:0.2
docker ps

# Test the containers
curl http://localhost:8080
# test the first container
curl http://localhost:4000

################################################################################
# Debug

# log's output as the container is running
docker logs -f <container_id>
docker logs -f dffeb595e808

# start an interactive Bash session inside the running container
# bash ran in the WORKDIR directory (/app) specified in the Dockerfile
docker exec -it <container_id> bash
docker exec -it dffeb595e808 bash
ls
exit

# examine a container's metadata
docker inspect <container_id>
docker inspect dffeb595e808

# inspect specific fields from the returned JSON
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container_id>
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dffeb595e808
################################################################################
# Publish

# [hostname]/[project-id]/[image]:[tag]
gcloud config list project
# Tag node-app:0.2
docker tag node-app:0.2 gcr.io/<project-id>/node-app:0.2
docker tag node-app:0.2 gcr.io/qwiklabs-gcp-01-c8712ba2f372/node-app:0.2
docker images

# Push this image to gcr
docker push gcr.io/<project-id>/node-app:0.2
docker push gcr.io/qwiklabs-gcp-01-c8712ba2f372/node-app:0.2

# Check that the image exists in gcr
# Navigation menu > Container Registry and click node-app
# http://gcr.io/<project-id>/node-app
# http://gcr.io/qwiklabs-gcp-01-c8712ba2f372/node-app

# make fresh-environment

# Stop and remove all containers
docker stop $(docker ps -q)
docker rm $(docker ps -aq)

# remove all images
docker rmi node-app:0.2 gcr.io/<project-id>/node-app:0.2 node-app:0.1
docker rmi node-app:0.2 gcr.io/qwiklabs-gcp-01-c8712ba2f372/node-app:0.2 node-app:0.1
docker rmi $(docker images -aq) # remove remaining images
docker images

# Pull the image and run it
docker pull gcr.io/<project-id>/node-app:0.2
docker pull gcr.io/qwiklabs-gcp-01-c8712ba2f372/node-app:0.2
docker run -p 4000:80 -d gcr.io/<project-id>/node-app:0.2
docker run -p 4000:80 -d gcr.io/qwiklabs-gcp-01-c8712ba2f372/node-app:0.2
curl http://localhost:4000
################################################################################
