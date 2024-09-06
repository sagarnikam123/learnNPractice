# pods

# Creating Pods
#######################################################################################################################
# Creating Pod from Manifest

nano pod-1.yaml
kubectl create -f pod-1.yaml    # pod/pod-1 created
#######################################################################################################################
# Creating Pod from the Terminal

kubectl run pod-2 --image=nginx:1.14.2 --namespace=namespace-2 # pod/pod-2 created
kubectl delete pod/pod-2 --namespace=namespace-2    # if created wrong/ImagePullBackOff
#######################################################################################################################
# Viewing Pods

# Get All Pods
kubectl get pods    # No resources found in default namespace.
kubectl get pods -A # across all namespaces
kubectl get pods --namespace=namespace-1
#######################################################################################################################
# Describing Pods

kubectl describe pod pod-1 --namespace=namespace-1
#######################################################################################################################
# Updating Pods

nano pod-1.yaml
# Error from server (AlreadyExists): error when creating "pod-1.yaml": pods "pod-1" already exists
kubectl create -f pod-1.yaml
# Warning: resource pods/pod-1 is missing the kubectl.kubernetes.io/last-applied-configuration annotation
# which is required by kubectl apply. kubectl apply should only be used on resources
# created declaratively by either kubectl create --save-config or kubectl apply.
# The missing annotation will be patched automatically.
# pod/pod-1 configured

kubectl apply -f pod-1.yaml
kubectl describe pod pod-1 --namespace=namespace-1
#######################################################################################################################
# Deleting Pods

kubectl delete pod pod-2 --namespace=namespace-2
kubectl get pods -A
#######################################################################################################################
