# Using a Shared hostPath Volume Type Demo Guide
kubectl apply -f blue-app-shared-vol.yaml
kubectl expose deployment blue-app --type=NodePort
kubectl get deploy,po,svc

minikube service list
