# Kubernetes Building Blocks

# Namespaces

# list all the Namespaces
kubectl get namespaces

# create new namespace
kubectl create namespace learning-namespace
########################################################################################################################
# Pods

# create a pod (nginx-pod)
kubectl create -f def-pod.yaml

# without definition manifest file
kubectl run nginx-pod --image=nginx:latest --port=80

# create definition manifest file for pod
kubectl run nginx-pod3 --image=nginx:latest --port=80 \
  --dry-run=client -o yaml > nginx-pod3.yaml

# generate json definition manifest
kubectl run nginx-pod4 --image=nginx:latest --port=80 \
  --dry-run=client -o json > nginx-pod4.json

# upload both generated manifest files
kubectl create -f nginx-pod3.yaml
kubectl create -f nginx-pod4.json

# additional operations
kubectl apply -f nginx-pod3.yaml
kubectl get pods
kubectl get pod nginx-pod3 -o yaml
kubectl get pod nginx-pod4 -o json
kubectl describe pod nginx-pod2
kubectl delete pod nginx-pod4
kubectl delete -f nginx-pod3
kubectl delete pod nginx-pod2
kubectl delete pod nginx-pod

# wide output
kubectl get pods -o wide

# run pod
kubectl run firstrun --image=nginx

# imperative command
kubectl run firstrun --image=nginxx --port=88 --dry-run=client -o yaml > secondrun.yaml
# apply above generated manifest
kubectl apply -f secondrun.yaml
# check pod
kubectl describe pod secondrun
# repalce image typo
kubectl replace --force -f secondrun.yaml
# delete pod
kubectl delete -f secondrun.yaml
kubectl delete pods firstrun nginx-pod3 nginx-pod4
########################################################################################################################
# ReplicaSets (1)

kubectl create -f redis-rs.yaml
kubectl apply -f redis-rs.yaml

kubectl get replicasets
kubectl get rs
kubectl scale rs frontend --replicas=4
kubectl get rs frontend -o yaml
kubectl get rs frontend -o json
kubectl describe rs frontend
kubectl delete rs frontend
########################################################################################################################
# Deployments (1)

kubectl create -f def-deploy.yaml
kubectl delete -f def-deploy.yaml

# imperative way - multi-line commands
kubectl create deployment nginx-deployment \
  --image=nginx:latest --port=80 --replicas=3

# get starter defition manifest - YAML
kubectl create deployment nginx-deployment \
  --image=nginx:latest --port=80 --replicas=3 \
  --dry-run=client -o yaml > nginx-deploy.yaml
# get starter definition manifest - JSON
kubectl create deployment nginx-deployment \
  --image=nginx:latest --port=80 --replicas=3 \
  --dry-run=client -o json > nginx-deploy.json

# load yaml/json manifest
kubectl create -f nginx-deploy.yaml
kubectl create -f nginx-deploy.json
########################################################################################################################
# Deployments (2)

kubectl apply -f nginx-deploy.yaml --record
kubectl get deployments
kubectl get deploy -o wide
kubectl scale deploy nginx-deployment --replicas=4
kubectl get deploy nginx-deployment -o yaml
kubectl get deploy nginx-deployment -o json
kubectl describe deploy nginx-deployment
kubectl rollout status deploy nginx-deployment
kubectl rollout history deploy nginx-deployment
kubectl rollout history deploy nginx-deployment --revision=1
kubectl set image deploy nginx-deployment nginx=nginx:1.21.5 --record
kubectl rollout history deploy nginx-deployment --revision=2
kubectl rollout undo deploy nginx-deployment --to-revision=1
kubectl get all -l app=nginx-deployment -o wide
kubectl delete deploy nginx-deployment
kubectl get deploy,rs,po -l app=nginx-deployment
########################################################################################################################
