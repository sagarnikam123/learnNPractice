# Kubernetes ConfigMap and Secret as Kubernetes Volumes

# spin up mosquitto pod
kubectl apply -f mosquitto-without-volumes.yaml

# check pods
kubectl get pod

# get terminal of pod-container
kubectl exec -it mosquitto-77598f4546-r5d4s -- /bin/sh

# inside container
ls
cd mosquitto
cat config/mosquitto.conf

# delete deployment
kubectl delete -f mosquitto-without-volumes.yaml

# add volumes info & make mosquitto.yaml
# overwrite mosquitto.conf by mouting
# create config & secret file before pod starts
kubectl apply -f config-file.yaml
kubectl apply -f secret-file.yaml

# check secret
kubectl get secret
kubectl get configmap

# mosquitto with configmap & secret as volumes mounted
kubectl apply -f mosquitto.yaml

# check secret & config
kubectl exec -it  mosquitto-5cc649d949-954qk -- /bin/sh
cat mosquitto/config/mosquitto.conf
cat mosquitto/secret/secret.file

# terminate deployment
kubectl delete -f mosquitto.yaml

# check status
kubectl get all