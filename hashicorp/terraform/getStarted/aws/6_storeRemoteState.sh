# Store Remote State

# Set up Terraform Cloud & workspace-CLI driven
# add a cloud block to main.tf

# Login to Terraform Cloud
# use the remote execution mode
# create & save API token as instructed, this will save it in below file
# cat /home/tetra/.terraform.d/credentials.tfrc.json
terraform login

# Initialize Terraform
terraform init

# delete the local state file
rm terraform.tfstate

# Set workspace variables
# Add your AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in the "Environment Variables" section
# mark them as "Sensitive"

# Apply the configuration
terraform apply

# Destroy your infrastructure
terraform destroy