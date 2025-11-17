#!/bin/bash
# Kubernetes Authentication, Authorization & Admission Control Demo
# Course: Introduction to Kubernetes - Linux Foundation

# ============================================================================
# PART 1: SETUP ENVIRONMENT
# ============================================================================

# Start minikube and view current config
minikube start
kubectl config view

# Create namespace and working directory
kubectl create namespace lfs158
cd /Users/snikam/Documents/git/learnNPractice/linuxFoundation/courses/introductionToKubernetes/10_authenticationAuthorizationAdmissionControl
mkdir rbac
cd rbac

# ============================================================================
# PART 2: USER CREATION & CERTIFICATE SETUP
# ============================================================================

# Create system user 'bob' (will prompt for password twice)
sudo useradd -s /bin/bash bob
sudo passwd bob

# Generate private key and certificate signing request for bob
openssl genrsa -out bob.key 2048
openssl req -new -key bob.key \
    -out bob.csr -subj "/CN=bob/O=learner"

# Create YAML manifest for certificate signing request
vim signing-request.yaml

apiVersion: certificates.k8s.io/v1
kind: CertificateSigningRequest
metadata:
    name: bob-csr
spec:
    groups:
    - system:authenticated
    request: <base64-encoded-csr>
    signerName: kubernetes.io/kube-apiserver-client
    usages:
    - digital signature
    - key encipherment
    - client auth

# ============================================================================
# PART 3: CERTIFICATE SIGNING REQUEST PROCESS
# ============================================================================

# Encode CSR in base64 and update signing-request.yaml manually
cat bob.csr | base64 | tr -d '\n','%'

# Create and check CSR object (shows pending state)
kubectl create -f signing-request.yaml
kubectl get csr

# Approve CSR and verify (shows approved and issued states)
kubectl certificate approve bob-csr
kubectl get csr

# ============================================================================
# PART 4: KUBECTL CLIENT CONFIGURATION
# ============================================================================

# Extract approved certificate and save to file
kubectl get csr bob-csr \
    -o jsonpath='{.status.certificate}' | base64 -d > bob.crt

# View the certificate
cat bob.crt

# Configure kubectl with bob's credentials
kubectl config set-credentials bob \
    --client-certificate=bob.crt --client-key=bob.key

# Create context for bob in lfs158 namespace
kubectl config set-context bob-context \
    --cluster=minikube --namespace=lfs158 --user=bob

# Verify kubeconfig entry
kubectl config view

# ============================================================================
# PART 5: RBAC - ROLE CREATION
# ============================================================================

# Create test deployment in lfs158 namespace
kubectl -n lfs158 create deployment nginx --image=nginx:alpine

# Test bob's access (should fail - no permissions yet)
kubectl --context=bob-context get pods

# Create Role for pod reading permissions
vim bob-role.yaml

apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: pod-reader
  namespace: lfs158
rules:
- apiGroups: ["*"]
  resources: ["pods"]
  verbs: ["get", "watch", "list"]

kubectl create -f bob-role.yaml

kubectl -n lfs158 get roles

# Create the Role
kubectl create -f bob-role.yaml
kubectl -n lfs158 get roles

# ============================================================================
# PART 6: RBAC - ROLEBINDING CREATION
# ============================================================================

# Create RoleBinding to assign Role to user bob
vim bob-rolebinding.yaml

apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: pod-reader-binding
  namespace: lfs158
subjects:
- kind: User
  name: bob
  apiGroup: rbac.authorization.k8s.io
roleRef:
  kind: Role
  name: pod-reader
  apiGroup: rbac.authorization.k8s.io

# Create the RoleBinding
kubectl create -f bob-rolebinding.yaml
kubectl -n lfs158 get rolebindings

# Test bob's access again (should work now)
kubectl --context=bob-context get pods

# ============================================================================
# PART 7: ADMISSION CONTROLLERS DEMO
# ============================================================================

# Check current admission controllers in kube-apiserver
kubectl -n kube-system describe pod kube-apiserver-minikube | grep -i admission

# Create pod with IfNotPresent pull policy
kubectl run admitted --image=nginx --image-pull-policy=IfNotPresent

# Verify current imagePullPolicy
kubectl get pods admitted -o yaml | grep -i imagePullPolicy

# Enable AlwaysPullImages admission controller
minikube ssh
# Inside minikube VM:
sudo grep admission /etc/kubernetes/manifests/kube-apiserver.yaml
sudo cp /etc/kubernetes/manifests/kube-apiserver.yaml /kube-apiserver-yaml.backup
# Add AlwaysPullImages to admission controllers list
sudo vi /etc/kubernetes/manifests/kube-apiserver.yaml
# Verify changes
sudo grep admission /etc/kubernetes/manifests/kube-apiserver.yaml
# Exit minikube VM
exit

# After minikube restarts, test admission controller effect
kubectl run muted --image=nginx --image-pull-policy=IfNotPresent

# Check if imagePullPolicy was modified by admission controller
kubectl get pods muted -o yaml | grep -i imagePullPolicy
