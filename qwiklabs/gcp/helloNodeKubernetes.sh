# Hello Node Kubernetes

###############################################################################

# Create your Node.js application

# write a simple Node.js server
vi server.js

# server.js
var http =  reqire('http');
var handleRequest = function(request, response){
    response.writeHead(200);
    response.end('Hello World!');
}
var www = http.createServer(handleRequest);
www.listen(8080);

# start the node server
# Use the built-in Web preview feature of Cloud Shell to open a new browser tab
node server.js
###############################################################################
# Create a Docker container image

# create a Dockerfile
vi Dockerfile

# Dockerfile
FROM node:6.9.2
EXPOSE 8080
COPY server.js .
CMD node server.js

# Build the image
docker build -t gcr.io/<project-id>/hello-node:v1

# test the image locally
# use the web preview feature
docker run -d -p 8080:8080 gcr.io/<project-id>/hello-node:v1
# or use
curl http://localhost:8080

# Find your Docker container ID
docker ps
# Stop the container
docker stop <container-id>

# push image to the Google Container Registry
# view - Navigation menu > Container Registry
gcloud auth configure-docker
docker push gcr.io/<project-id>/hello-node:v1
###############################################################################
# Create your cluster

# set your project
gcloud config set project <project-id>

# create cluster with two n1-standard-1 nodes
# console - Kubernetes Engine > Kubernetes clusters > Create cluster
gcloud container cluster create hello-world \
        --num-nodes 2 \
        --machine-type n1-standard-1
        --zone us-central1-a
###############################################################################
# Create your pod

kubectl crate deployment hello-node \
    --image=gcr.ip/<project-id>/hello-node:v1

# view the deployment
kubectl get deployments
# view pod
kubectl get pods
# cluster info
kubectl cluster-info
# config
kubectl config view
# events - troubleshooting
kubectl get events
# logs - troubleshooting
kubectl logs <pod-name>
###############################################################################
# Allow external traffic

# expose the deployment, and not the pod (directly as a Kubernetes service)
kubectl expose deployment hello-node --type="LoadBalancer" --port=8080

# find the publicly-accessible IP address of the service
# CLUSTER-IP - internal IP
# EXTERNAL-IP - external load-balanced IP
# browser - http://<EXTERNAL_IP>:8080
kubectl get services
###############################################################################
# Scale up your service

# tell replication controller to manage a new number of replicas for your pod
kubectl scale deployment hello-node --replicas=4

# updated deployment description
kubectl get deployment
# list all pods
kubectl get pods
###############################################################################
# Roll out an upgrade to your service

# deploy a new version to production without impacting your users
# update the response message in server.js
# response.end('Hello Kubernetes World!');

# build and publish a new container image(v2) to the registry
docker build -t gcr.io/<project-id>/hello-node:v2 .
docker push gcr.io/<project-id>/hello-node:v2

# Kubernetes will smoothly update your replication controller
# to the new version of the application

# edit the existing hello-node deployment and change the image from
# gcr.io/<project-id>/hello-node:v1 to gcr.io/<project-id>/hello-node:v2

# - image: gcr.io/PROJECT_ID/hello-node:v1 ## Update this line
kubect edit deployment hello-node

# check
kubectl get deployments
###############################################################################
