# Authentication and Authorization Demo Guide (1)

minikube start
kubectl config view

# Authentication and Authorization Demo Guide (2)
kubectl create namespace lfs158
cd /Users/snikam/Documents/git/learnNPractice/linuxFoundation/courses/introductionToKubernetes/10_authenticationAuthorizationAdmissionControl
mkdir rbac
cd rbac

# Create a new user bob on your workstation, and set bob's password as well (the system will prompt you to enter the password twice)
sudo useradd -s /bin/bash bob
sudo passwd bob

# create private key for new user bob with the openssl tool,
# then create a certificate singing request for bobo with the same openssl tool
openssl genrsa -out bob.key 2048
openssl req -new -key bob.key \
    -out bob.csr -subj "/CN=bob/O=learner"

# create a YAML manifest for a certificate signing request object, and save it with a
# blank value for the request field
vim singing-request.yaml

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

# Authentication and Authorization Demo Guide (3)
# view certificate, encode it in base64, and assign it to the request field in the singing-request.yaml file
cat bob.csr | base64 | tr -d '\n','%'

# create the certificate singing request object, the list the certificate singing request object. It shows a pending state:
kubectl create -f signing-request.yaml
kubectl get csr

# approve the certificate signing request object, then list the csr object again. It shows both approved and issued states:
kubectl certificate approve bob-csr
kubect get csr

kubectl certificate approve bob-csr

# Authentication and Authorization Demo Guide (4)
# extract the approved certificate from the certificate signing request, decode it with base64 and save it as a certificate file. Then view the certificate in the newly created certificate file:
kubectl get csr bob-csr |
-o jsonpath='{.status.certificate}' | base64 -d > bob.crt

cat bob.crt

# configure the kubectl client's configuration manifest with user bob's credentials by assigning his key and certificate:
kubectl config set-credentials bob \
    --client-certificate=bob.crt --client-key=bob.key

# create a new context entry in the kubectl client's configuration manifest for the user bob, associated with the lfs158 namespace in the minikube cluster:
kubectl config set-context bob-context \
    --cluster=minikube --namespace=lfs158 --user=bob
#
