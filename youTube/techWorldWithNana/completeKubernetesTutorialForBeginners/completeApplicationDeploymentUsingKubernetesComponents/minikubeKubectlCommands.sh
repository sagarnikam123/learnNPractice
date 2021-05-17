# check minikube status
minikube status

# start kubernetes cluster
minikube start

# check kubernetes
kubectl get all

# create secret inside kubernetes
kubectl apply -f mongo-secret.yaml

# check secret
kubectl get secret

# create mongodb deployment
kubectl apply -f mongo.yaml

# check all
kubectl get all

# watch pod
kubectl get pod --watch

# check each pod specifically
kubectl describe pod pod/mongodb-deployment-8f6675bc5-b4j2l

# after adding service to mongo.yaml (repeat each time)
kubectl apply -f mongo.yaml

# check service
# ClusterIP or InternalService are by default
kubectl get service

# specific details
kubectl describe service mongodb-service

# wide output
kubectl get pod -o wide

# all components related to mongodb
kubectl get all | grep mongodb

# create configmap
kubectl apply -f mongo-configmap.yaml

# create mongo-express service
kubectl apply -f mongo-express.yaml

# check pod name
kubectl get pod

# check logs
kubectl logs mongo-express-6994f569bb-xq5ql

# apply mongo-express as external service
kubectl apply -f mongo-express.yaml

# check servie
kubectl get service

# assigns external IP/public address
# Opening service default/mongo-express-service in default browser..
minikube service mongo-express-service