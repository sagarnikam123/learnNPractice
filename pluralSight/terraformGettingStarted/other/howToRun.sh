################################################################################
#
# Terraform
#
################################################################################

# version
terraform version

# plugin initiatenalization
terraform init

# plan
terraform plan -var-file='../secure/terraform.tfvars'

# apply
terraform apply -var-file='../secure/terraform.tfvars'

# destroy
terraform destroy -var-file='../secure/terraform.tfvars'
terraform destroy -var-file='../secure/terraform.tfvars' --force

################################################################################
#
# SSH
#
################################################################################

ssh -i ap-south-1Mumbai.pem ec2-user@ec2-13-232-79-51.ap-south-1.compute.amazonaws.com
