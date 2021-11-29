# Deploy Containers Using YAML

###############################################################################
# Step 1 - Create Deployment

# deployment.yml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: webapp1
spec:
  replicas: 1
  selector:
    matchLabels:
      app: webapp1
  template:
    metadata:
      labels:
        app: webapp1
    spec:
      containers:
      - name: webapp1
        image: katacoda/docker-http-server:latest
        ports:
        - containerPort: 80

 # deployed to the cluster
 kubectl create -f deployment.yml
 # get list of all deployment objects
 kubectl get deployment
 # details of individual deployment
 kubectl describe deployment webapp1       
###############################################################################
# Step 2 - Create Service

# service.yml
apiVersion: v1
kind: Service
metadata:
  name: webapp1-svc
  labels:
    app: webapp1
spec:
  type: NodePort
  ports:
  - port: 80
    nodePort: 30080
  selector:
    app: webapp1

# deploy service
kubectl create -f service.yml
# all service object
kubectl get svc
# details of a service
kubectl describe svc webapp1-svc
# check webapp server
curl host01:30080
###############################################################################
# Step 3 - Scale Deployment

# change number of instances running
replicas: 4

kubectl apply -f deployment.yml

# check deployment status
kubectl get deployment
kubectl get pods

# As all the Pods have the same label selector, 
# they'll be load balanced behind the Service NodePort deployed.
curl host01:30080
###############################################################################