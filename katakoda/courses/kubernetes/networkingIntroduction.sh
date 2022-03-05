# Networking Introduction

###############################################################################
# Step 1 - Cluster IP

# Cluster IP is the default approach when creating a Kubernetes Service.
# The service is allocated an internal IP that other components can use to access the pods.

# clusterip.yaml
apiVersion: v1
kind: Service
metadata:
  name: webapp1-clusterip-svc
  labels:
    app: webapp1-clusterip
spec:
  ports:
  - port: 80
  selector:
    app: webapp1-clusterip
---
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: webapp1-clusterip-deployment
spec:
  replicas: 2
  template:
    metadata:
      labels:
        app: webapp1-clusterip
    spec:
      containers:
      - name: webapp1-clusterip-pod
        image: katacoda/docker-http-server:latest
        ports:
        - containerPort: 80
---
# service deploy
kubectl apply -f clusterip.yaml
# view pods
kubectl get pods
# view service
kubectl get service
# details on the service configuration and active endpoints (Pods)
kubectl describe svc/webapp1-clusterip-svc
#  the service can be accessed via the ClusterIP allocated.
export CLUSTER_IP=$(kubectl get services/webapp1-clusterip-svc -o go-template='{{(index .spec.clusterIP)}}')
echo CLUSTER_IP=$CLUSTER_IP
# hit multiple requests
curl $CLUSTER_IP:80
###############################################################################
# Step 2 - Target Port

# TargetPort is the Port which the application is configured to listen on.
# Port is how the application will be accessed from the outside.

# clusterip-target.yaml
apiVersion: v1
kind: Service
metadata:
  name: webapp1-clusterip-targetport-svc
  labels:
    app: webapp1-clusterip-targetport
spec:
  ports:
  - port: 8080
    targetPort: 80
  selector:
    app: webapp1-clusterip-targetport
---
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: webapp1-clusterip-targetport-deployment
spec:
  replicas: 2
  template:
    metadata:
      labels:
        app: webapp1-clusterip-targetport
    spec:
      containers:
      - name: webapp1-clusterip-targetport-pod
        image: katacoda/docker-http-server:latest
        ports:
        - containerPort: 80
---

# get service
kubectl get svc
# details
kubectl describe svc/webapp1-clusterip-targetport-svc
# accessed via the cluster IP
export CLUSTER_IP=$(kubectl get services/webapp1-clusterip-targetport-svc -o go-template='{{(index .spec.clusterIP)}}')
echo CLUSTER_IP=$CLUSTER_IP

# hit multiple times
curl $CLUSTER_IP:8080
###############################################################################
# Step 3 - NodePort

# While TargetPort and ClusterIP make it available to inside the cluster,
# the NodePort exposes the service on each Node’s IP via the defined static port.

# nodeport.yaml
apiVersion: v1
kind: Service
metadata:
  name: webapp1-nodeport-svc
  labels:
    app: webapp1-nodeport
spec:
  type: NodePort
  ports:
  - port: 80
    nodePort: 30080
  selector:
    app: webapp1-nodeport
---
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: webapp1-nodeport-deployment
spec:
  replicas: 2
  template:
    metadata:
      labels:
        app: webapp1-nodeport
    spec:
      containers:
      - name: webapp1-nodeport-pod
        image: katacoda/docker-http-server:latest
        ports:
        - containerPort: 80
---
# deploy
kubectl apply -f nodeport.yaml
# check service
kubectl get svc
#
kubectl describe svc/webapp1-nodeport-svc
# reach to service
curl 172.17.0.10:30080
###############################################################################
# Step 4 - External IPs

# Another approach to making a service available outside of the cluster is via External IP addresses
# Update the definition to the current cluster's IP address with
sed -i 's/HOSTIP/172.17.0.10/g' externalip.yaml

# externalip.yaml
apiVersion: v1
kind: Service
metadata:
  name: webapp1-externalip-svc
  labels:
    app: webapp1-externalip
spec:
  ports:
  - port: 80
  externalIPs:
  - HOSTIP
  selector:
    app: webapp1-externalip
---
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: webapp1-externalip-deployment
spec:
  replicas: 2
  template:
    metadata:
      labels:
        app: webapp1-externalip
    spec:
      containers:
      - name: webapp1-externalip-pod
        image: katacoda/docker-http-server:latest
        ports:
        - containerPort: 80
---

#
kubectl apply -f externalip.yaml
kubectl get svc
kubectl describe svc/webapp1-externalip-svc
# The service is now bound to the IP address and Port 80 of the master node
curl 172.17.0.10
###############################################################################
# Step 5 - Load Balancer

# cloudprovider.yaml
apiVersion: extensions/v1beta1
kind: DaemonSet
metadata:
  name: kube-keepalived-vip
  namespace: kube-system
spec:
  template:
    metadata:
      labels:
        name: kube-keepalived-vip
    spec:
      hostNetwork: true
      containers:
        - image: gcr.io/google_containers/kube-keepalived-vip:0.9
          name: kube-keepalived-vip
          imagePullPolicy: Always
          securityContext:
            privileged: true
          volumeMounts:
            - mountPath: /lib/modules
              name: modules
              readOnly: true
            - mountPath: /dev
              name: dev
          # use downward API
          env:
            - name: POD_NAME
              valueFrom:
                fieldRef:
                  fieldPath: metadata.name
            - name: POD_NAMESPACE
              valueFrom:
                fieldRef:
                  fieldPath: metadata.namespace
          # to use unicast
          args:
          - --services-configmap=kube-system/vip-configmap
          # unicast uses the ip of the nodes instead of multicast
          # this is useful if running in cloud providers (like AWS)
          #- --use-unicast=true
      volumes:
        - name: modules
          hostPath:
            path: /lib/modules
        - name: dev
          hostPath:
            path: /dev
      nodeSelector:
        # type: worker # adjust this to match your worker nodes
---
## We also create an empty ConfigMap to hold our config
apiVersion: v1
kind: ConfigMap
metadata:
  name: vip-configmap
  namespace: kube-system
data:
---
apiVersion: apps/v1beta1
kind: Deployment
metadata:
  labels:
    app: keepalived-cloud-provider
  name: keepalived-cloud-provider
  namespace: kube-system
spec:
  replicas: 1
  revisionHistoryLimit: 2
  selector:
    matchLabels:
      app: keepalived-cloud-provider
  strategy:
    type: RollingUpdate
  template:
    metadata:
      annotations:
        scheduler.alpha.kubernetes.io/critical-pod: ""
        scheduler.alpha.kubernetes.io/tolerations: '[{"key":"CriticalAddonsOnly", "operator":"Exists"}]'
      labels:
        app: keepalived-cloud-provider
    spec:
      containers:
      - name: keepalived-cloud-provider
        image: quay.io/munnerz/keepalived-cloud-provider:0.0.1
        imagePullPolicy: IfNotPresent
        env:
        - name: KEEPALIVED_NAMESPACE
          value: kube-system
        - name: KEEPALIVED_CONFIG_MAP
          value: vip-configmap
        - name: KEEPALIVED_SERVICE_CIDR
          value: 10.10.0.0/26 # pick a CIDR that is explicitly reserved for keepalived
        volumeMounts:
        - name: certs
          mountPath: /etc/ssl/certs
        resources:
          requests:
            cpu: 200m
        livenessProbe:
          httpGet:
            path: /healthz
            port: 10252
            host: 127.0.0.1
          initialDelaySeconds: 15
          timeoutSeconds: 15
          failureThreshold: 8
      volumes:
      - name: certs
        hostPath:
          path: /etc/ssl/certs

# deploy cloud provider
kubectl apply -f cloudprovider.yaml
# When a service requests a Load Balancer, the provider will allocate
# one from the 10.10.0.0/26 range defined in the configuration
kubectl get pods -n kube-system

# service is configured via a Load Balancer as defined in
# loadbalancer.yaml
apiVersion: v1
kind: Service
metadata:
  name: webapp1-loadbalancer-svc
  labels:
    app: webapp1-loadbalancer
spec:
  type: LoadBalancer
  ports:
  - port: 80
  selector:
    app: webapp1-loadbalancer
---
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: webapp1-loadbalancer-deployment
spec:
  replicas: 2
  template:
    metadata:
      labels:
        app: webapp1-loadbalancer
    spec:
      containers:
      - name: webapp1-loadbalancer-pod
        image: katacoda/docker-http-server:latest
        ports:
        - containerPort: 80
---

kubectl apply -f loadbalancer.yaml

kubectl get svc

kubectl describe svc/webapp1-loadbalancer-svc

export LoadBalancerIP=$(kubectl get services/webapp1-loadbalancer-svc -o go-template='{{(index .status.loadBalancer.ingress 0).ip}}')
echo LoadBalancerIP=$LoadBalancerIP

curl $LoadBalancerIP
###############################################################################
