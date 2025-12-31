# Deploying an Application Using the Dashboard (1)
# Deploying an Application Using the Dashboard (2)
# Deploying an Application Using the Dashboard (3)
# list deployments
kubectl get deployments

# list replicasets
kubectl get replicasets

# list pods
kubectl get pods

# list deployments, replicasets, pods in single go
kubectl get deploy,rs,po

# Exploring Labels and Selectors (1)
kubectl describe pod web-dash-84c859944c-s2lxx
kubectl describe pod/web-dash-84c859944c-s2lxx

# Exploring Labels and Selectors (2)
# List the Pods, along with their attached Labels
kubectl get pods -L k8s-app
kubectl get pods -L k8s-app,label2

# Select the Pods with a given Label.
kubectl get pods -l k8s-app=web-dash
kubectl get pods -l k8s-app=webserver

# Deploying an Application Using the CLI (1)
# deleting the web-dash Deployment
kubectl delete deployments web-dash
kubectl get replicasets
kubectl get pods

kubectl create deployment webserver --image=nginx:alpine --replicas=3 --port=80 \
--dry-run=client -o yaml > webserver.yaml

# Deploying an Application Using the CLI (2)
kubectl apply -f webserver.yaml
kubectl get replicasets
kubectl get pods

# imperatively
kubectl create deployment webserver --image=nginx:alpine --replicas=3 --port=80

# Exposing an Application (1)
kubectl apply -f webserver-svc.yaml

# exposing the previously created Deployment (this method requires an existing Deployment).
kubectl expose deployment webserver --type=NodePort --name=web-service --port=80
kubectl expose deployment webserver --type=NodePort --name=web-service-2 --port=80

# Exposing an Application (2)
kubectl get service
kubectl describe service web-service
kubectl describe service web-service-2

kubectl get po -l app=nginx -o wide
kubectl get po -l app=webserver -o wide

kubectl get ep web-service
kubectl get ep web-service-2

kubectl get po,ep -l app=nginx -o wide
kubectl get po,ep -l app=webserver -o wide

# Accessing an Application
minikube ip
minikube service web-service
minikube service web-service-2
minikube service web-service --url
minikube service web-service-2 --url

kubectl port-forward svc/web-service 8080:80
kubectl port-forward svc/web-service-2 8080:80

# For Minikube clusters on the Docker driver, the NodePort cannot be accessed
# from the host workstation due to limitations of the Docker networking model.
# In those scenarios, another application access option is via the minikube tunnel.

kubectl expose deployment webserver --name=web-lb --type=LoadBalancer --port 8080
kubectl get services
# open in browser <external-ip>:8080

# Demo: Deploying a Containerized Application

# Liveness, Readiness, and Startup Probes
# Liveness Command
kubectl apply -f livenss-probe.yaml

# Liveness HTTP Request
# TCP Liveness Probe
# gRPC Liveness Probe
# Readiness Probes
