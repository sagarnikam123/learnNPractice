# Kubernetes add-ons

################################################################################
# Kubernetes dashboard

# Step 1: Deploy the Kubernetes dashboard
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.5/aio/deploy/recommended.yaml
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get svc/kubernetes-dashboard
# Step 2: Create an eks-admin service account and cluster role binding
    # Apply the service account and cluster role binding to your cluster
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml apply -f ./helperYamls/eks-admin-service-account.yaml
# Step 3: Connect to the dashboard
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml -n kube-system describe secret $(kubectl --kubeconfig=$HOME/.kube/config.eks.yaml -n kube-system get secret | grep eks-admin | awk '{print $1}')
# Start the kubectl proxy
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml proxy
# To access the dashboard endpoint, open the following link with a web browser: http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#!/login
################################################################################
# Kubernetes Metrics Server

# Deploy the Metrics Server
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

# Verify that the metrics-server deployment
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get deployment metrics-server -n kube-system

# remove Kubernetes Metrics Server
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml delete -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
################################################################################
# Control plane metrics with Prometheus

# Viewing the raw metrics
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get --raw /metrics

# To deploy Prometheus using Helm
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml create namespace prometheus

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm upgrade --kubeconfig=$HOME/.kube/config.eks.yaml -i prometheus prometheus-community/prometheus \
--namespace prometheus \
--set alertmanager.persistentVolume.storageClass="gp2",server.persistentVolume.storageClass="gp2"

# list releases
helm list --kubeconfig=$HOME/.kube/config.eks.yaml -n prometheus
# Verify that all of the pods in the prometheus namespace are in the READY state
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get pods -n prometheus

# Prometheus server URL
# kubectl --kubeconfig=$HOME/.kube/config.eks.yaml --namespace=prometheus port-forward deploy/prometheus-server 9090
export POD_NAME=$(kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get pods --namespace prometheus -l "app=prometheus,component=server" -o jsonpath="{.items[0].metadata.name}")
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml --namespace prometheus port-forward $POD_NAME 9090
# Point a web browser to localhost:9090 - container_memory_usage_bytes

# Alertmanager URL
export POD_NAME=$(kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get pods --namespace prometheus -l "app=prometheus,component=alertmanager" -o jsonpath="{.items[0].metadata.name}")
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml --namespace prometheus port-forward $POD_NAME 9093

# PushGateway URL
export POD_NAME=$(kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get pods --namespace prometheus -l "app=prometheus,component=pushgateway" -o jsonpath="{.items[0].metadata.name}")
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml --namespace prometheus port-forward $POD_NAME 9091

# uninstall release
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml delete ns prometheus
# helm uninstall --kubeconfig=$HOME/.kube/config.eks.yaml prometheus # not working
################################################################################
