# minikube install


###############################################################################
# install hyperkit
brew install hyperkit

# install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
sudo chown root: /usr/local/bin/kubectl
kubectl version --client
###############################################################################
# install minikube on macOS (intel chip)

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
sudo install minikube-darwin-amd64 /usr/local/bin/minikube

# make hyperkit the default driver:
minikube config set driver hyperkit
###############################################################################
# start your cluster

# minikube start --driver=hyperkit # if default driver is not set
minikube start

# cluster info
kubectl cluster-info

# interact with your cluster
kubectl get po -A

# enable dashboard
minikube dashboard
#######################################################################################################################
# create a Deployment that manages a Pod

# Run a test container image that includes a webserver
kubectl create deployment hello-node --image=registry.k8s.io/e2e-test-images/agnhost:2.39 -- /agnhost netexec --http-port=8080
kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1

# View the Deployment:
kubectl get deployments

# View the Pod
kubectl get pods

# View cluster events:
kubectl get events

# View the kubectl configuration:
kubectl config view
#######################################################################################################################
# Create a Service

# Expose the Pod to the public internet using the kubectl expose command
# On cloud providers that support load balancers, an external IP address would be provisioned to access the Service.
# On minikube, the LoadBalancer type makes the Service accessible through the minikube service command.
kubectl expose deployment hello-node --type=LoadBalancer --port=8080
kubectl get services
minikube service hello-node

# Enable addons
minikube addons list

minikube addons enable metrics-server
# minikube addons disable metrics-server

kubectl get pod,svc -n kube-system

# Clean up
kubectl delete service hello-node
kubectl delete deployment hello-node

# Stop the Minikube cluster
minikube stop

# Optional
minikube delete
#######################################################################################################################
# Deploy an app


#######################################################################################################################
