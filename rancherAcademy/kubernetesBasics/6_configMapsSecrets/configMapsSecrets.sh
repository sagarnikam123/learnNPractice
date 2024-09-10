# ConfigMaps and Secrets

#######################################################################################################################
# Creating a ConfigMap Inline

kubectl config set-context --current --namespace=namespace-1
kubectl create configmap configmap-warning --from-literal=message=goodbye.world
kubectl get configmaps

# Creating a ConfigMap From a File
kubectl create -f configmap.yaml
kubectl get configmaps
# Viewing a ConfigMap
kubectl describe configmaps configmap-message
kubectl describe configmaps configmap-warning

# Using Values From ConfigMap
kubectl create -f configmap-test-pod.yaml
kubectl delete pod configmap-test-pod
kubectl get pods -n namespace-1
kubectl logs configmap-test-pod
#######################################################################################################################
# Creating a Secret Inline

kubectl create secret generic inline-secret --from-literal=username=user --from-literal=password=password
kubectl get secret

# Creating a Secret From a File
kubectl create -f secret.yaml
kubectl get secret
kubectl describe secrets podsecret

# Using Values From Secrets
kubectl create -f secret-test-pod.yaml
kubectl logs secret-test-pod
#######################################################################################################################
