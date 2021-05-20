# Kubernetes Engine: Qwik Start-GSP100

# Task 1: Set a default compute zone
gcloud config set compute/zone us-central1-a
gcloud config get-value compute/zone

# Task 2: Create a GKE cluster(Google Kubernetes Engine)
gcloud container clusters creaters lamberghini
gcloud container clusters list

# Task 3: Get authentication credentials for the cluster
gcloud container clusters get-credentials lamberghini --region=us-central1-a

# Task 4: Deploy an application to the cluster
kubectl run hello-server --image=gcr.io/google-samples/hello-app:1.0 --port 8080
kubectl expose deployment hello-server --type="LoadBalancer"
kubectl get service hello-server

# view the application
# http://[EXTERNAL-IP]:8080

# Task 5: Deleting the cluster
gcloud container clusters delete lamberghini
