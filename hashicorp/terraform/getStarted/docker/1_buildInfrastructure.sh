# Build Infrastructure

# make configuration directory
mkdir learn-terraform-docker-container
cd learn-terraform-docker-container

# make Terraform configuration file & add config in it
touch main.tf

# Initialize the project
terraform init

# check configuration formatting
terraform fmt

# check configuration validation
terraform validate

# check execution plan
terraform plan

# Provision the NGINX server container with apply
terraform apply

# view resources terraform tracks & manages
terraform show

# visit localhost:8000 in your web browser

# for advanced state management
terraform state list
