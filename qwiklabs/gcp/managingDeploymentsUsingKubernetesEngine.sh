# Managing Deployments Using Kubernetes Engine

################################################################################
# Setup

# list the project ID
gcloud config list project

# Set zone
gcloud config set compute/zone us-central1-a

# Get sample code for this lab
gsutil -m cp -r gs://spls/gsp053/orchestrate-with-kubernetes .
cd orchestrate-with-kubernetes/kubernetes

# Create a cluster with five n1-standard-1 nodes
gcloud container clusters create bootcamp --num-nodes 5 --scopes "https://www.googleapis.com/auth/projecthosting,storage-rw"
################################################################################
# Learn about the deployment object

# look at the Deployment object
kubectl explain deployment

# see all of the fields
kubectl explain deployment --recursive

# what the individual fields do
kubectl explain deployment.metadata.name
################################################################################
# Create a deployment

# Update the deployments/auth.yaml
# Change the image in the containers
# image: "kelseyhightower/auth:1.0.0"
cat deployments/auth.yaml

# create auth deployment object
kubectl create -f deployments/auth.yaml
# verify
kubectl get deployments
kubectl get replicasets
kubectl get pods

# create auth service
kubectl create -f services/auth.yaml

# create & expose hello deployment
kubectl create -f deployments/hello.yaml
kubectl create -f services/hello.yaml

# create & expose frontend deployment
kubectl create secret generic tls-certs --from-file tls/
kubectl create configmap nginx-frontend-conf --from-file=nginx/frontend.conf
kubectl create -f deployments/frontend.yaml
kubectl create -f services/frontend.yaml

# get frontend external IP & interact with it
kubectl get services frontend
curl -ks https://<external-ip>

# using output templating feature of kubectl
curl -ks https://`kubectl get svc frontend -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`

# Scale a Deployment

# look at spec.replicas field & update it to scale
kubectl explain deployment.spec.replicas
kubectl scale deployment hello --replicas=5
# verify
kubectl get pods | grep hello- | wc -l

# scale back
kubectl scale deployment hello --replicas=3
kubectl get pods | grep hello- | wc -l

################################################################################
# Rolling update

 # Trigger a rolling update
 # Change the image in the containers
 # image: kelseyhightower/hello:2.0.0
kubectl edit deployment hello

# verify in rollout history too
kubectl get replicaset
kubectl rollout history deployment/hello

# Pause a rolling update
kubectl rollout pause deployment/hello

# verify status of rollout
kubectl rollout status deployment/hello

################################################################################
# Canary deployments
################################################################################
# Blue-green deployments

################################################################################
