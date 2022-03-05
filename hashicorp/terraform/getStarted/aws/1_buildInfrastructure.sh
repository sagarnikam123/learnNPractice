# Build Infrastructure

# Configure the AWS CLI
# ~/.aws/credentials
aws configure

# Write configuration
# create directory & change into it
mkdir learn-terraform-aws-instance
cd learn-terraform-aws-instance

# create a file to define your infrastructure & paste the code
touch main.tf

# Initialize the directory
terraform init

# Format and validate the configuration
# Format your configuration
terraform fmt

# Validate your configuration
terraform validate

# Create infrastructure
# view infrastructure plan
terraform plan

# create infra
terraform apply

# Inspect state
# terraform.tfstate
terraform show

# Manually Managing State
terraform state list # <pre>Show a resource in the state
terraform state show aws_instance.app_server # Show a resource in the state
