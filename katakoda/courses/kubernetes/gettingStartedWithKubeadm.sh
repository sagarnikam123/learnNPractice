# Getting Started With Kubeadm

# Kubeadm solves the problem of handling TLS encryption configuration,
# deploying the core Kubernetes components and ensuring that additional
# nodes can easily join the cluster. The resulting cluster is
# secured out of the box via mechanisms such as RBAC.
################################################################################
# Step 1 - Initialise Master
# initialise the cluster with a known token to simplify the following steps.
kubeadm init --token=102952.1a7dd4cc8d1f4cc5 --kubernetes-version $(kubeadm version -o short)

# copies the configuration to the users home directory and sets the environment variable for use with the CLI.
sudo cp /etc/kubernetes/admin.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf
################################################################################
 # Step 2 - Join Cluster
 # Token management
 kubeadm token list

# On the second node, run the command to join the cluster providing the IP address of the Master node.
kubeadm join --discovery-token-unsafe-skip-ca-verification --token=102952.1a7dd4cc8d1f4cc5 172.17.0.71:6443
################################################################################
# Step 3 - View Nodes
# command below will return the two nodes in our cluster.
kubectl get nodes
################################################################################
# Step 4 - Deploy Container Networking Interface (CNI)
# deployment definition can be viewed at
cat /opt/weave-kube
# applying CNI
kubectl apply -f /opt/weave-kube

# Weave will now deploy as a series of Pods on the cluster.
# The status of this can be viewed using the command
kubectl get pod -n kube-system
################################################################################
# Step 5 - Deploy Pod
# create a Pod based on the Docker Image katacoda/docker-http-server.
kubectl run http --image=katacoda/docker-http-server:latest --replicas=1
# status of the Pod creation
kubectl get pods
# Docker Container running on the node.
docker ps | grep docker-http-server
################################################################################
# Step 6 - Deploy Dashboard
# Deploy the dashboard yaml with the command
kubectl apply -f dashboard.yaml
# dashboard is deployed into the kube-system namespace. View the status
kubectl get pods -n kube-system
# A ServiceAccount is required to login. A ClusterRoleBinding is used to assign
# the new ServiceAccount (admin-user) the role of cluster-admin on the cluster.
cat <<EOF | kubectl create -f -
apiVersion: v1
kind: ServiceAccount
metadata:
  name: admin-user
  namespace: kube-system
---
apiVersion: rbac.authorization.k8s.io/v1beta1
kind: ClusterRoleBinding
metadata:
  name: admin-user
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: admin-user
  namespace: kube-system
EOF

# Once the ServiceAccount has been created, the token to login can be found with:
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')
#  https://2886795369-8443-frugo01.environments.katacoda.com/
# For production, instead of externalIPs, it's recommended to use kubectl proxy
