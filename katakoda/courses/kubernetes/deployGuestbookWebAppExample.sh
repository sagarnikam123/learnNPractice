# Deploy Guestbook Web App Example

###############################################################################
# Step 1 - Start Kubernetes

# helper script will launch the API, Master, a Proxy and DNS discovery
launch.sh
# Health Check
kubectl cluster-info
kubectl get nodes
###############################################################################
# Step 2 - Redis Master Controller

# Create Replication Controller
# redis-master-controller.yml
apiVersion: v1
kind: ReplicationController
metadata:
  name: redis-master
  labels:
    name: redis-master
spec:
  replicas: 1
  selector:
    name: redis-master
  template:
    metadata:
      labels:
        name: redis-master
    spec:
      containers:
      - name: master
        image: redis:3.0.7-alpine
        ports:
        - containerPort: 6379

# start master-controller
kubectl create -f redis-master-controller.yaml
# check replication controller
kubectl get rc
# a pod is a collection of containers that makes up a particular application
kubectl get pods
###############################################################################
# Step 3 - Redis Master Service

# Create Service
apiVersion: v1
kind: Service
metadata:
  name: redis-master
  labels:
    name: redis-master
spec:
  ports:
    # the port that this service should serve on
  - port: 6379
    targetPort: 6379
  selector:
    name: redis-master

# create service
kubectl create -f redis-master-service.yaml
# list & describe services
kubectl get services
kubectl describe services redis-master 
###############################################################################
# Step 4 - Replication Slave Pods

# redis-slave-controller.yaml
apiVersion: v1
kind: ReplicationController
metadata:
  name: redis-slave
  labels:
    name: redis-slave
spec:
  replicas: 2
  selector:
    name: redis-slave
  template:
    metadata:
      labels:
        name: redis-slave
    spec:
      containers:
      - name: worker
        image: gcr.io/google_samples/gb-redisslave:v1
        env:
        - name: GET_HOSTS_FROM
          value: dns
          # If your cluster config does not include a dns service, then to
          # instead access an environment variable to find the master
          # service's host, comment out the 'value: dns' line above, and
          # uncomment the line below.
          # value: env
        ports:
        - containerPort: 6379

# Start Redis Slave Controller
kubectl create -f redis-slave-controller.yaml
# check replication controller
kubectl get rc
###############################################################################
# Step 5 - Redis Slave Service

# redis-slave-service.yaml
apiVersion: v1
kind: Service
metadata:
  name: redis-slave
  labels:
    name: redis-slave
spec:
  ports:
    # the port that this service should serve on
  - port: 6379
  selector:
    name: redis-slave

# create service
kubectl create -f redis-slave-service.yaml
# check service
kubectl get services
###############################################################################
# Step 6 - Frontend Replicated Pods

# frontend-controller.yaml
apiVersion: v1
kind: ReplicationController
metadata:
  name: frontend
  labels:
    name: frontend
spec:
  replicas: 3
  selector:
    name: frontend
  template:
    metadata:
      labels:
        name: frontend
    spec:
      containers:
      - name: php-redis
        image: gcr.io/google_samples/gb-frontend:v3
        env:
        - name: GET_HOSTS_FROM
          value: dns
          # If your cluster config does not include a dns service, then to
          # instead access environment variables to find service host
          # info, comment out the 'value: dns' line above, and uncomment the
          # line below.
          # value: env
        ports:
        - containerPort: 80

# Launch Frontend
kubectl create -f frontend-controller.yaml
# check RC & pods
kubectl get rc
kubectl get pods
###############################################################################
# Step 7 - Guestbook Frontend Service

# frontend-service.yaml
apiVersion: v1
kind: Service
metadata:
  name: frontend
  labels:
    name: frontend
spec:
  # if your cluster supports it, uncomment the following to automatically create
  # an external load-balanced IP for the frontend service.
  # type: LoadBalancer
  type: NodePort
  ports:
    # the port that this service should serve on
    - port: 80
      nodePort: 30080
  selector:
    name: frontend

# Start Proxy
kubectl create -f frontend-service.yaml
# check servcies
kubectl get services
###############################################################################
# Step 8 - Access Guestbook Frontend

# view pos status
kubectl get pods
# find NodePort
kubectl describe servcie frontend | grep NodePort
# view UI
https://2886795352-30080-ollie02.environments.katacoda.com
###############################################################################