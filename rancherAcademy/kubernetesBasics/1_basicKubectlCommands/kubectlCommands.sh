# rancherAcademy basics

# start minikube
minikube start

# version
minikube kubectl version
minikube kubectl -- version --output=json

# view config
minikube kubectl -- config view

# get contexts
kubectl config get-contexts

# current context
kubectl config current-context

# switch context
kubectl config use-context rancher-desktop

# get nodes
kubectl get nodes
kubectl get no

# namespaces
kubectl get namespaces

# pods
kubectl get pods
kubectl get pods -A # all pods in all namespaces
