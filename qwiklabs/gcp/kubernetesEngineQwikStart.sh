# Kubernetes Engine: Qwik Start-GSP100

# Setting a default compute zone
gcloud config set compute/zone us-central1-a
gcloud config get-value compute/zone

# Creating a Kubernetes Engine cluster
gcloud container clusters creaters lamberghini
gcloud container clusters list

# Get authentication credentials for the cluster
gcloud container clusters get-credentials lamberghini --region=us-central1-a

# Deploying an application to the cluster
kubectl run hello-server --image=gcr.io/google-samples/hello-app:1.0 --port 8080
kubectl expose deployment hello-server --type="LoadBalancer"
kubectl get service hello-server

# view the application
# http://[EXTERNAL-IP]:8080

# Clean Up
gcloud container clusters delete lamberghini
