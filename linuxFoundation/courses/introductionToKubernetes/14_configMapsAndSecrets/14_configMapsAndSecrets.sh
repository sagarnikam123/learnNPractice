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
kubectl create configmap green-web-cm --from-file=index-green.html
kubectl apply -f web-green-with-cm.yaml
kubectl expose deployment green-web --type=NodePort
minikube service list
minikube service green-web --url # open in browser
curl -s http://127.0.0.1:51622 | head

# Secrets
# Create a Secret from Literal Values
kubectl create secret generic my-password \
--from-literal=password=mysqlpassword

kubectl get secret my-password
kubectl get secret my-password -o yaml
kubectl describe secret my-password

# Create a Secret from a Definition Manifest
# encode to base64 value
echo mysqlpassword | base64
bXlzcWxwYXNzd29yZAo=
# decode base64 value
echo "bXlzcWxwYXNzd29yZAo=" | base64 --decode
mysqlpassword

kubectl create -f mypass.yaml
kubectl create -f mypass-stringdata.yaml

kubectl describe secret my-password-2
kubectl describe secret my-password-3

# Create a Secret from a File
echo mysqlpassword | base64
echo mysqlpassword | base64 > password.txt
kubectl create secret generic my-file-password \
--from-file=password.txt

kubectl get secret my-file-password -o yaml
kubectl describe secret my-file-password

# Use Secrets Inside Pods: As Environment Variables
spec:
  containers:
  - image: wordpress:4.7.3-apache
    name: wordpress
    env:
    - name: WORDPRESS_DB_PASSWORD
      valueFrom:
        secretKeyRef:
          name: my-password
          key: password

# Use Secrets Inside Pods: As Volumes
spec:
  containers:
  - image: wordpress:4.7.3-apache
    name: wordpress
    volumeMounts:
    - name: secret-volume
      mountPath: /etc/secret-data
      readOnly: true
  volumes:
  - name: secret-volume
    secret:
      secretName: my-password
