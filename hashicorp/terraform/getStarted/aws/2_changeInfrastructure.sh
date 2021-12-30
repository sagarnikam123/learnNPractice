# Change Infrastructure

# Configuration
# update the ami of your instance
# ami  = "ami-08d70e59c07c61a3a" # ubuntu-xenial-16.04-amd64-server-20200814

# Apply Changes
terraform apply

# print out the new values associated with this instance
terraform show
terraform state show aws_instance.app_server