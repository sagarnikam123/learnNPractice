# objects

#######################################################################################################################
# Creating Namespaces

# Creating Namespace from Manifest
nano namespace-1.yaml
kubectl create -f namespace-1.yaml # from manifest

# Creating Namespace from the Terminal
kubectl create namespace namespace-2 # from terminal
#######################################################################################################################
# Viewing Namespaces

# Get All Namespaces
kubectl get namespaces # all namespaces
# Get Specific Namespace
kubectl get namespace namespace-1 # particular namespace
# Get Namespace by Label
kubectl get namespace -l name=namespace-1 # namespaces by labels
kubectl get namespace -l name=namespace-2 # No resources found

# Describing Namespaces
kubectl describe namespaces namespace-1
kubectl describe namespace -l name=namespace-1  # using label
kubectl describe namespaces namespace-2
#######################################################################################################################
# Annotating Namespace

# Creating Namespace from Manifest with Annotations
nano namespace-3.yaml
kubectl create -f namespace-3.yaml
kubectl describe namespace-3

# Annotating an Existing Namespace
kubectl annotate --overwrite namespace namespace-2 generated-by=system
kubectl describe namespace namespace-2
#######################################################################################################################
