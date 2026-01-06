# ConfigMaps & Secrets

# Create a ConfigMap from Literal Values
kubectl create configmap my-config --from-literal=key1=value1 \
--from-literal=key2=value2

kubectl get configmaps my-config -o yaml

# Create a ConfigMap from a Definition Manifest
kubectl create -f customer1-configmap.yaml

# Create a ConfigMap from a File
kubectl create configmap permission-config --from-file=permission-reset.properties

# Use ConfigMaps Inside Pods: As Environment Variables
containers:
- name: myapp-full-container
  image: myapp
  envFrom:
  - configMapRef:
    name: full-config-map

conainers:
- name: myapp-specific-container
  iamge: myapp
  env:
  - name: SPECIFIC_ENV_VAR1
    valueFrom:
      configMapKeyRef:
        name: config-map-1
        key: SPECIFIC_DATA
 - name: SPECIFIC_ENV_VAR2
    valueFrom:
      configMapKeyRef:
        name: config-map-2
        key: SPECIFIC_INFO

# Use ConfigMaps Inside Pods: As Volumes
containers:
- name: mysqpp-vol-container
  image: myapp
  volumenMounts:
  - name: config-volume
    mountPath: /etc/config
volumes:
- name: config-volume
  configMap:
    name: vol-config-map

# Using ConfigMaps as Volumes Demo Guide
kubectl create configmap green-web-cm --from-file=index.html
kubectl apply -f web-green-with-cm.yaml
kubectl expose deployment green-web --type=NodePort
minikube service list
minikube service green-web --url # open in browser
curl -s http://127.0.0.1:51622 | head

# Secrets
