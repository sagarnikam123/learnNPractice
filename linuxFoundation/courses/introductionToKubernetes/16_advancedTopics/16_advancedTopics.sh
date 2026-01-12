# Advanced Topics

# Annotations
apiVersion: apps/v1
kind: Deployment
metadata:
    name: webserver
    annotations:
        description: Deployment based PoC dates 2nd Mar'2022

kubectl run saved --image=nginx:alping --save-config=true
kubectl get pod saved -o yaml

# Quota and Limits Management

# compute resources quotas (requests and limits)
apiVersion: v1
kind: ResourceQuota
metadata:
  name: compute-resources
  namespace: myspace
spec:
  hard:
    requests.cpu: "1"
    requests.memory: 1Gi
    limits.cpu: "2"
    limits.memory: 2Gi
    requests.nvidia.com/gpu: 4

# K8s object count quotas
apiVersion: v1
kind: ResourceQuota
metadata:
    name: object-counts
    namespace: myspace
spec:
    hard:
        configmaps: "10"
        persistentvolumeclaims: "4"
        pods: "4"
        secrets: "10"
        services: "10"
        services.loadbalancers: "2"

# Limit Range
apiVersion: v1
kind: LimitRange
metadata:
  name: cpu-constraint-per-container
  namespace: myspace
spec:
  limits:
  - default:
      cpu: 500m
    defaultRequest:
      cpu: 500m
    max:
      cpu: "1"
    min:
      cpu: 100m
    type: Container
