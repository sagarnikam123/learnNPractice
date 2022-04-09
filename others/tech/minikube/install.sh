
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
###############################################################################