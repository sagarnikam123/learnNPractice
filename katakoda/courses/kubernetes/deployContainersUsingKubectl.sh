# Deploy Containers Using Kubectl

# Learn->how to use Kubectl to create and launch Deployments, Replication
# Controllers and expose them via Services without writing yaml definitions.
# This allows you to quickly launch containers onto the cluster.
###############################################################################
# Step 1 - Launch Cluster

# To start we need to launch a Kubernetes cluster.
# Execute the command below to start the cluster components and download the Kubectl CLI.
minikube start --wait=false

# Wait for the Node to become Ready by checking
kubectl get nodes
###############################################################################
# Step 2 - Kubectl Run

# launch a deployment called http which will start a container
# format -> kubectl run <name of deployment> <properties>
# kubectl run http --image=katacoda/docker-http-server:latest --replicas=1 # DEPRECATED
kubectl run --generator=run-pod/v1 http --image=katacoda/docker-http-server:latest --replicas=1
# deployment status
kubectl get deployments
# detailed
kubectl describe deployment http
###############################################################################
# Step 3 - Kubectl Expose

# use kubectl to create a service which exposes the Pods on a particular port
kubectl expose deployment http --external-ip="172.17.0.20" --port=8000 --target-port=80
# ping the host and see the result from the HTTP service
curl http://172.17.0.20:8000
###############################################################################
# Step 4 - Kubectl Run and Expose

# DEPRECATED
# kubectl run httpexposed --image=katacoda/docker-http-server:latest --replicas=1 --port=80 --hostport=8001
# not working this also - its pod & not service
# kubectl run httpexposed --generator=run-pod/v1 --image=katacoda/docker-http-server:latest --replicas=1 --port=80 --hostport=8001
# access
curl http://172.17.0.20:8000
# Under the covers, this exposes the Pod via Docker Port Mapping.
# As a result, you will not see the service listed using
kubectl get svc
kubectl get service

# find more
docker ps | grep httpexposed
# Pause Containers
# ports are exposed on the Pod, not the http container itself.
# The Pause container is responsible for defining the network for the Pod.
###############################################################################
# Step 5 - Scale Containers

# Pods will then automatically be load balanced using the exposed Service.
kubectl scale --replicas=3 deployment http
kubectl get pods
kubectl describe svc http
# Making requests to the service will request in different nodes processing the request.
curl http://172.17.0.20:8000
###############################################################################
