# Step 1 - Start Minikube
# checking minikube installation
minikube version

# start Minikube
minikube start
################################################################################
# Step 2 - Cluster Info
# view details of cluster & its health status
kubectl cluster-info

# To view the nodes in the cluster using
kubectl get nodes
################################################################################
# Step 3 - Deploy Containers
# containers to be deployed onto the cluster
kubectl run first-deployment --image=katacoda/docker-http-server --port=80

# status of the deployment can be discovered via the running Pods
kubectl get pods

# exposing container via NodePort
kubectl expose deployment first-deployment --port=80 --type=NodePort

# finds allocated port & executes a HTTP request
export PORT=$(kubectl get svc second-deployment -o go-template='{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}')
echo "Accessing host01:$PORT"
curl host01:$PORT

# Step 4 - Dashboard
# view your applications in a UI.
# https://2886795421-30000-frugo01.environments.katacoda.com/
################################################################################
