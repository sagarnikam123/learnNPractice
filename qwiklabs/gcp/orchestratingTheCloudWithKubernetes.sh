# Orchestrating the Cloud with Kubernetes

################################################################################
# Setup and Requirements

# Google Kubernetes Engine

gcloud config set project qwiklabs-gcp-02-96071f66688c
# set the zone
gcloud config set compute/zone us-central1-b

# start up a cluster
gcloud container clusters create io
################################################################################
# Get the sample code

# Clone the GitHub repository
gcloud auth login``
gsutil cp -r gs://spls/gsp021/* .
cd orchestrate-with-kubernetes/kubernetes
ls
################################################################################
# Quick Kubernetes Demo

# launch a single instance of the nginx container
kubectl create deployment nginx --image=nginx:1.10.0

# view the running nginx container
kubectl get pods

# expose running nginx container outside
kubectl expose deployment nginx --port 80 --type LoadBalancer

# list services (note down ExternalIP)
kubectl get services

# hit nginx container
curl http://34.69.150.230:80
################################################################################
# Pods

# Creating Pods
cat pods/monolith.yaml

apiVersion: v1
kind: Pod
metadata:
  name: monolith
  labels:
    app: monolith
spec:
  containers:
    - name: monolith
      image: kelseyhightower/monolith:1.0.0
      args:
        - "-http=0.0.0.0:80"
        - "-health=0.0.0.0:81"
        - "-secret=secret"
      ports:
        - name: http
          containerPort: 80
        - name: health
          containerPort: 81
      resources:
        limits:
          cpu: 0.2
          memory: "10Mi"

# Create the monolith pod & list all pods running default namespace
kubectl create -f pods/monolith.yaml
kubectl get pods

# after pod running,  get more information about the monolith pod
kubectl describe pods monolith
################################################################################
# Interacting with Pods

# set up port-forwarding (in 2nd terminal- stays as like haltin, means OK)
kubectl port-forward monolith 10080:80

# start talking to your pod using curl (in 1st terminal)
curl http://127.0.0.1:10080

# hitting a secure endpoint
curl http://127.0.0.1:10080/secure

# login to get an auth token back from monolith (password-password)
# copy JWT token after login
curl -u user http://127.0.0.01:10080/login

# create env variable for token
TOKEN=$(curl http://127.0.0.01:10080/login -u user  | jq -r '.token')

# hit secure endpoint with token
curl -H "Authorization: Bearer $TOKEN" http://127.0.0.1:10080/secure

# view logs for monolith pods
kubectl logs monolith

# view stream of logs in real-time (in 3rd terminal)
kubectl logs -f monolith

# hit curl in another terminal & check logs above
curl http://127.0.0.1:10080

# interactive shell inside monolith for troubleshooing if any
# kubectl exec monolith --stdin --tty -c monolith /bin/sh # deprecated
kubectl exec --stdin --tty monolith -- sh

# after inside monolith pod, test external connectivity
ping -c 3 google.com

# logout 
exit
################################################################################
# Services
################################################################################
# Creating a Service

# explore secure monolith service configuration
cd ~/orchestrate-with-kubernetes/kubernetes
cat pods/secure-monolith.yaml

# create secure-monlith pods & their configuration data
kubectl create secret generic tls-certs --from-file tls/
kubectl create configmap nginx-proxy-conf --from-file nginx/proxy.conf
kubectl create -f pods/secure-monolith.yaml

# check
kubectl get secrets
kubectl get configmaps
kubectl get pods

# explore monolith service configuration file
cat services/monolith.yaml

kind: Service
apiVersion: v1
metadata:
  name: "monolith"
spec:
  selector:
    app: "monolith"
    secure: "enabled"
  ports:
    - protocol: "TCP"
      port: 443
      targetPort: 443
      nodePort: 31000
  type: NodePort

# create monolith services
kubectl create -f services/monolith.yaml

# allow traffic to monolith service on exposed nodeport
gcloud compute firewall-rules create allow-monolith-nodeport --allow=tcp:31000

# get an external IP for one of the nodes
gcloud compute instances list

# hit secure-monolith service using curl (timed out)
# curl: (7) Failed to connect to 34.66.237.163 port 31000: Connection refused
curl -k https://34.66.237.163:31000
################################################################################
# Adding Labels to Pods

# perform a lable query
kubectl get pods -l "app=monolith,secure=enabled"

# add missing lablel to secure-monolith pod
kubectl label pods secure-monolith 'secure=enabled'
kubectl get pods secure-monolith --show-labels

# view list of endpoints
kubectl describe services monolith | grep Endpoints

# test by hitting the nodes again
gcloud compute instances list
curl -k https://34.66.237.163:31000
curl -k https://35.223.102.114:31000
################################################################################
# Deploying Applications with Kubernetes
################################################################################
# Creating Deployments

# examining the auth deployment configuration file
cat deployments/auth.yaml

apiVersion: apps/v1
kind: Deployment
metadata:
  name: auth
spec:
  selector:
    matchlabels:
      app: auth
  replicas: 1
  template:
    metadata:
      lables:
        app: auth
        track: stable
    spec:
      containers:
        - name: auth
          image: "kelseyhightower/auth:2.0.0"
          ports:
            - name: http
              containerPort: 80
            - name: health
              containerPort: 81
...

# create deployments
kubectl create -f deployments/auth.yaml

# create a service for your auth deployment
kubectl create -f services/auth.yaml

# same thing to create & expose hello deployment
kubectl crate -f deployments/hello.yaml
kubectl crate -f services/hello.yaml

# frontend deployment
kubectl create configmap nginx-frontend-conf --from-file=nginx/frontend.conf
kubectl create -f deployments/frontend.yaml
kubectl create -f services/frontend.yaml

# get fronend's external ip & hit with curl
kubectl get services frontend

curl -k https://35.226.104.132
################################################################################