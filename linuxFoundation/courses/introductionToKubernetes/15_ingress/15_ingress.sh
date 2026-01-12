# 15_ingress

# Ingress (1) - Name-Based Virtual Hosting ingress
# Ingress (2) - Fanout ingress
# Ingress Controller
# enable default ingress controller in minikube
minikube addons enable ingress

# Deploy an Ingress Resource
kubectl create -f name-based-virtual-hosing-ingress.yaml

# Access Services Using Ingress
# host configuration file (/etc/hosts on Mac and Linux)
