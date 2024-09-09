# ReplicaSets and Deployments

# Updating Our Context
kubectl get pods --namespace=namespace-1
kubectl config get-contexts
kubectl config current-context
kubectl config set-context --current --namespace=namespace-1
kubectl get pods
#######################################################################################################################
# Creating ReplicaSet

kubectl get pods
kubectl create -f replicaSet-1.yaml

# Interacting with the ReplicaSet
kubectl get pods
# Deleting a Pod
kubectl delete pod replicaset-1-mtwfb
kubectl get pods
# Deleting a ReplicaSet
kubectl delete replicasets replicaset-1 # or
kubectl delete replicasets.apps replicaset-1

kubectl get pods    # or
kubectl get replicasets.apps
#######################################################################################################################
# Creating a Deployment

kubectl create -f deployment-1.yaml
kubectl describe deployments.apps deployment-1
kubectl get deployment
kubectl get pods

# Rolling Out an Update to a Deployment
kubectl describe deployment/deployment-1
kubectl set image deployment/deployment-1 nginx=nginx:1.16.1
kubectl describe deployment/deployment-1
# Rolling Back an Update to a Deployment
kubectl rollout history deployment/deployment-1
kubectl rollout undo deployment/deployment-1
kubectl describe deployments deployment-1
#######################################################################################################################
