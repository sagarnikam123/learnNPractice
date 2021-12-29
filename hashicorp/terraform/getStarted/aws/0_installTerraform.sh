# Install Terraform

# Ubuntu/Debian

# Ensure gnupg, software-properties-common & curl packages installed
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# Add the HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add the official HashiCorp Linux repository.
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update to add the repository, and install the Terraform CLI
sudo apt-get update && sudo apt-get install terraform

# Verify the installation
terraform -help

# help for subcommand
terraform -help plan

# Quick start tutorial
# provision an NGINX server using Docker on Linux

# Create a directory & navigate into it
mkdir learn-terraform-docker-container
cd learn-terraform-docker-container

# Paste the Terraform configuration into a file main.tf

# Initialize the project, which downloads a plugin that allows Terraform to interact with Docker
terraform init

# Provision the NGINX server container with apply
terraform apply

# Verify the existence of the NGINX container 
# by visiting localhost:8000 in your web browser or by using docker
docker ps 

# stop the container
terraform destory