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

# Quota and Limits Management

# Horizontal Pod Autoscaler (HPA)
kubectl autoscale deployment myapp --min=2 --max=10 --cpu-percent=80

# Vertical Pod Autoscaler (VPA)

# Cluster Autoscaler

# Jobs and CronJobs

# StatefulSets

# Custom Resources
  # Custom Resource Definitions (CRDs)
  # API Aggregation

# Security Contexts and Pod Security Admission

apiVersion: v1
kind: Pod
metadata:
  name: demo
spec:
  securityContext:
    runAsUser: 1000
    runAsGroup: 3000
    fsGroup: 2000
  volumes:
  - name: vol
    emptyDir: {}
  containers:
  - name: busy
    image: busybox:1.28
    command: ["sh", "-c", "sleep infinity"]
    volumeMounts:
    - name: vol
      mountPath: /data/demo
    securityContext:
      allowPrivilegeEscalation: false

# Pod Security Standards

# Network Policies
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: demo-netpol
  namespace: default
spec:
  podSelector:
    matchLabels:
      role: db
    policyTypes:
    - Ingress
    - Egress
    ingress:
    - from:
      - namespaceSelector:
          matchLabels:
            project: myproject
      - podSelector:
          matchLabels:
            role: frontend
      ports:
      - protocol: TCP
        port: 6379
    egress:
    - to:
      - ipBlock:
          cidr: 10.0.0.0/24
      ports:
      - protocol: TCP
        port: 5978

# Monitoring, Logging, and Troubleshooting

# Metrics Server
kubectl top nodes --sort-by=cpu
kubectl top pods --sort-by=memory
# logs
kubectl logs pod-name
kubectl logs pod-name container-name
kubectl logs pod-name container-name -p # previous logs (logs of the very last failed container)

kubectl exec pod-name -- ls -la /
kubectl exec pod-name -c container-name -- env
kubectl exec pod-name -c container-name -it -- /bin/sh

# events
kubectl get events
kubectl events
kubect describe pod pod-name

# Helm
# Service Mesh
# Application Deployment Strategies
