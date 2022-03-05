# Define Input Variables

# Set the container name with a variable
# create variables.tf file
# main.tf -> name  = var.container_name

# apply configuration
terraform apply

# change container name with -var flag
terraform apply -var "container_name=YetAnotherName"
