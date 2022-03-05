# Getting Started Argo CD

# 1. Install Argo CD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# view all services & pods
kubectl get all -n argocd
kubectl describe svc argocd-server -n argocd

# 2. Download Argo CD CLI
sudo curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo chmod +x /usr/local/bin/argocd

# 3. Access The Argo CD API Server
# By default, the Argo CD API server is not exposed with an external IP

# Port Forwarding (only ipv4)
# E0215 16:47:15.650227   53917 portforward.go:378] error copying from remote stream to local connection: readfrom tcp6 [::1]:8080->[::1]:55200: write tcp6 [::1]:8080->[::1]:55200: write: broken pipe
# E0215 16:52:56.625475   93374 portforward.go:378] error copying from remote stream to local connection: readfrom tcp4 127.0.0.1:8080->127.0.0.1:51680: write tcp4 127.0.0.1:8080->127.0.0.1:51680: write: broken pipe
kubectl port-forward svc/argocd-server --address '127.0.0.1' -n argocd 8080:443

# Service Type Load Balancer - not worked in minikube
# kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

# edit service type as ClusterIP -> NodePort
kubectl -n argocd edit svc argocd-server
kubectl get nodes -o wide -n argocd # taken any agent's ip & port

# 4. Login Using The CLI
# initial password for the admin account is auto-generated and stored as clear text in the  field
# password in a secret named argocd-initial-admin-secret in your Argo CD installation namespace.
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

# Using the username admin and the password from above, login to Argo CD's IP or hostname:
argocd login <ARGOCD_SERVER>
argocd login "localhost:8080"

# Change the password using the command - {8,32}
argocd account update-password

# 5. Register A Cluster To Deploy Apps To (Optional) - only for external cluster

# 6. Create An Application From A Git Repository (CLI/UI)
# application status is initially in OutOfSync state since the application has yet to be deployed,
# and no Kubernetes resources have been created.
argocd app create guestbook --repo https://github.com/argoproj/argocd-example-apps.git --path guestbook --dest-server https://kubernetes.default.svc --dest-namespace default

# 7. Sync (Deploy) The Application
# Syncing via CLI
argocd app get guestbook
argocd app sync guestbook

# others
# helm repo add bitnami https://charts.bitnami.com/bitnami
# helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
# helm repo update
