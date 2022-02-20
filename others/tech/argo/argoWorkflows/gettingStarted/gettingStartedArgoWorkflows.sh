# Getting Started with Argo Workflow

################################################################################
# Install Argo Workflows
kubectl create ns argo
kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo-workflows/master/manifests/quick-start-postgres.yaml

# port-forward (https://localhost:2746)
kubectl -n argo port-forward deployment/argo-server 2746:2746
################################################################################
# Download the latest Argo CLI binary - https://github.com/argoproj/argo-workflows/releases/latest
curl -sLO https://github.com/argoproj/argo-workflows/releases/download/v3.2.8/argo-linux-amd64.gz
# Unzip
gunzip argo-linux-amd64.gz

# Make binary executable
chmod +x argo-linux-amd64

# Move binary to path
mv ./argo-linux-amd64 /usr/local/bin/argo

# Test installation
argo version
################################################################################
# submit an example workflow:
argo submit -n argo --watch https://raw.githubusercontent.com/argoproj/argo-workflows/master/examples/hello-world.yaml
argo list -n argo
argo get -n argo @latest
argo logs -n argo @latest
################################################################################
