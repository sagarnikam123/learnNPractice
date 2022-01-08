# Terraform Fundamentals

################################################################################

# Setup and Requirements
# list the active account name
gcloud auth list

# list the project ID
gcloud config list project

# Verifying Terraform installation
# Terraform comes pre-installed in Cloud Shell
terraform

# Build infrastructure
# create an empty configuration file 
touch instance.tf

# instance.tf
resource "google_compute_instance" "terraform" {
    project = "qwiklabs-gcp-00-64fc5e201f6f"
    name = "terraform"
    machine_type = "n1-standard-1"
    zone = "us-central1-a"
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }
    network_interface {
        network = "default"
        access_config {
            
        }
    }
}

#  new file has been added and 
# that there are no other *.tf files in your directory
ls

# Initialization
# Download and install the provider binary:
terraform init

# Create an execution plan
terraform plan

# Apply changes
terraform apply

# inspect the current state
terraform show
################################################################################