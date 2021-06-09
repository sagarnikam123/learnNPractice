# Launch Single Node Kubernetes Cluster

# Minikube is a tool that makes it easy to run Kubernetes locally. 
# Minikube runs a single-node Kubernetes cluster inside a VM on your laptop 
# for users looking to try out Kubernetes or develop with it day-to-day.
################################################################################
# Step 1 - Start Minikube

# checking minikube installation
minikube version

# start Minikube cluster
minikube start --wait=false
################################################################################
# Step 2 - Cluster Info

# view details of cluster & its health status
kubectl cluster-info

# To view the nodes in the cluster
kubectl get nodes
################################################################################
# Step 3 - Deploy Containers

# containers to be deployed onto the cluster
kubectl create deployment first-deployment --image=katacoda/docker-http-server

# status of the deployment can be discovered via the running Pods
kubectl get pods

# exposing container via NodePort
kubectl expose deployment first-deployment --port=80 --type=NodePort

# finds allocated port & executes a HTTP request
export PORT=$(kubectl get svc first-deployment -o go-template='{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}')
echo "Accessing host01:$PORT"
curl host01:$PORT
################################################################################
# Step 4 - Dashboard

# Kubernetes dashboard allows you to view your applications in a UI
# Enable the dashboard using Minikube
minikube addons enable dashboard

# Make the Kubernetes Dashboard available by deploying the following YAML definition
# dashboard has been made available on port 30000 but may take a while to start
kubectl apply -f /opt/kubernetes-dashboard.yaml

# To see the progress of the Dashboard starting
kubectl get pods -n kubernetes-dashboard -w

# view your applications in a UI.
# https://2886795280-30000-jago01.environments.katacoda.com/
################################################################################
