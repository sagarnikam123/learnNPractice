# Define Input Variables

# Set the instance name with a variable
# Create a new file called variables.tf with a block defining a new instance_name variable
# in main.tf -> Name = var.instance_name 

# Apply your configuration
terraform apply

# configuration again, overriding the default instance name by passing in a variable using the -var flag
# ~ update in-place
terraform apply -var="instance_name=YetAnotherName"

# check
terraform show