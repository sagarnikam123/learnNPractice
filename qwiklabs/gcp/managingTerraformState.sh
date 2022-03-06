# Managing Terraform State

################################################################################
# Working with backends

# Add a local backend
# create your main.tf configuration file
touch main.tf
# retrieve your Project ID
gcloud config list --format 'value(core.project'

# main.tf
terraform {
    backend "local" {
        path = "terraform/state/terraform.tfstate"
    }
}

provider "google" {
    project = ""
    region = "us-central-1"
}

resource "google_storage_bucket" "test-bucket-for-state" {
    name = ""
    location = "US"
    uniform_bucket_level_access = true
}

# init & apply
terraform init
terraform apply

# Examine your state file
terraform show

# Add a Cloud Storage backend
# main.tf
terraform {
    backend "gcs" {
        bucket = ""
        prefix = "terraform/state"
    }
}

# Initialize your backend again, to automatically migrate the state
terraform init -migrate-state

# Refresh the state
# Return to your storage bucket in the Cloud Console
# Click Add Label. Set the Key = key and Value = value
terraform refresh
terraform show #examine update

# Clean up your workspace
# First, revert your backend to local
terraform {
    backend "local" {
        path = "terraform/state/terraform.tfstate"
    }
}

terraform init -migrate-state

# In the main.tf file, add the force_destroy = true
resource "google_storage_bucket" "test-bucket-for-state" {
    name = ""
    location = "US"
    uniform_bucket_level_access = true
    force_destroy = true
}

# apply changes & destroy
terraform apply
terrafrom destroy
################################################################################
# Import Terraform configuration

# Create a nginx Docker container
docker run --name hashicorp-learn --detach --publish 8080:80 nginx:latest
# verify container is running
docker ps
# Web Preview -> Preview on port 8080
# Import the container into Terraform
# clone & change to directory
git clone https://github.com/hashicorp/learn-terrraform-import.git
cd learn-terraform-import
# Initialize your Terraform workspace
terraform init
#  comment out or delete the host argument in main.tf
provider "docker" {
    # host = "npipe:////.//pipe//docker_engine"
}
################################################################################
# Limitations and other considerations

################################################################################
