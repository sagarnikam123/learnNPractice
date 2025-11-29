# Accessing Application Pods

# Create deployment first
kubectl create deployment frontend --image=nginx --replicas=3 --port=5000

# Declarative method - using YAML file
kubectl create -f frontend-svc.yaml
# kubectl delete -f frontend-svc.yaml

# Imperative method 1 - expose existing deployment
kubectl expose deployment frontend --name=frontend-svc \
  --port=80 --target-port=5000

# Imperative method 2 - create service directly
kubectl create service clusterip frontend \
  --tcp=80:5000 --dry-run=client -o yaml \
  | sed 's/name: frontend/name: frontend-svc/g' \
  | kubectl create -f -

# List service and associated endpoints
# ClusterIP: Stable virtual IP for the Service (e.g., 10.106.181.53:80)
# Endpoints: Legacy API listing Pod IPs backing the Service (deprecated in v1.33+)
# EndpointSlice: Modern API, splits endpoints into slices (max 100/slice), better scalability
kubectl get service,endpoints frontend-svc
kubectl get svc,ep frontend-svc
kubectl get endpointslice -l kubernetes.io/service-name=frontend-svc

# Traffic Policies
apiVersion: v1
kind: Service
metadata:
  name: frontend-svc
spec:
  selector:
    app: frontend
  ports:
    - protocol: TCP
    port: 80
    targetPort: 5000
  internalTrafficPolicy: Local
  externalTrafficPolicy: Local

# Service Discovery

# Environment Variables
# DNS
# my-svc.my-namespace.svc.cluster.local
kubectl exec client-app-po-name -c cluent-container-name -- /bin/sh -c curl -s frontend-svc:80

# ServiceType: ClusterIP and NodePort
# ClusterIP (default) - accessible only within the cluster

apiVersion: v1
kind: Service
metadata:
  name: frontend-svc
spec:
  selector:
    app: frontend
  ports:
    - protocol: TCP
      port: 80
      targetPort: 5000
  type: ClusterIP

# NodePort - accessible externally via <NodeIP>:<NodePort> , highPort range: 30000-32767

apiVersion: v1
kind: Service
metadata:
  name: frontend-svc
spec:
  selector:
    app: frontend
  ports:
    - protocol: TCP
      port: 80
      targetPort: 5000
      nodePort: 32233
    type: NodePort

kubectl expose deployment frontend --name=frontend-svc \
  --port=80 --target-port=5000 --type=NodePort

kubectl create service nodeport frontend-svc \
  --tcp=80:5000 --node-port=32233

# ServiceType: LoadBalancer
# ServiceType: ExternalIP
# ServiceType: ExternalName
# Multi-Port Services
# application port

# Port-fowrading
kubectl port-forward deployment/frontend 8080:5000
kubectl port-forward frontend-77cbdf6f79-qsdts 8080:5000
kubectl port-forward svc/frontend-svc 8080:80
