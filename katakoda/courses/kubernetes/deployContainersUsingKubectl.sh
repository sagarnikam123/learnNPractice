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
# based on the Docker Image katacoda/docker-http-server:latest.
kubectl run http --image=katacoda/docker-http-server:latest --replicas=1
###############################################################################



###############################################################################