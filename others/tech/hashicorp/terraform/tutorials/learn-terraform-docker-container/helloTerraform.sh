#

# start Docker Desktop
open -a docker

# make folder & main file
cd /Users/sagar/Documents/git/learnNPractice/others/tech/hashicorp/terraform/tutorials
mkdir learn-terraform-docker-container
cd learn-terraform-docker-container
touch main.tf

# initialize project
terraform init

# plan
terraform plan

# apply changes
terraform apply

# visiting localhost:8000 in your web browser
docker ps   # to see the containe

# destroy container
terraform destroy
