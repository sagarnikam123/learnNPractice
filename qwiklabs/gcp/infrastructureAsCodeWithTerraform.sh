# Infrastructure as Code with Terraform

################################################################################

# Build Infrastructure

# Create the main.tf file
touch main.tf
terraform {
    required_provider {
        google = {
            source = "hashicorp/google"
        }
    }
}

provider "google" {
    project = "qwiklabs-gcp-04-a5fb1c385c32"
    region = "us-central1"
    zone = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
    name = "terraform-network"
}

# Initialization
terraform init

# Creating Resources
terraform apply

# inspect the current state
terraform show
################################################################################
# Change Infrastructure

# Adding Resources - add a compute instance resource to main.tf:
resource "google_compute_instance" "vm_instance" {
    name = "terraform-instance"
    machine_type = "f1-micro"
    boot_disk = {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }
    network_interface {
        network = google_compute_network.vpc_network.name
        access_config {

        }
    }
}

# create the compute instance:
terraform apply

# Changing Resources

# Add a tags argument to your "vm_instance"
resource "google_compute_instance" "vm_instace" {
    name = "terraform-instance"
    machine_type = "f1-micro"
    tags = ["web", "dev"]
      labels = {
          name = "mobile",
          whatfor = "staging"
          }
    # ...
}

# update the instance
# prefix ~ means that Terraform will update the resource in-place
terraform apply

# Destructive Changes

# Edit the boot_disk block inside the vm_instance resource 
boot_disk {
    initialize_params {
        image = "cos-cloud/cos-stable"
    }
}

# apply this change to the existing resources
terraform apply

# Destroy Infrastructure
terraform destroy
################################################################################
# Create Resource Dependencies

# Recreate your network and instance
terraform apply

# Assigning a Static IP Address
resource "google_compute_address" "vm_static_ip" {
    name = "terraform-static-ip"
}

# check 
terraform plan

# attach the IP address to your instance
# Update the network_interface configuration
network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config = {
        nat_ip = google_compute_address.vm_static_ip.address
    }
}

# Run terraform plan again, but this time, save the plan
terraform plan -out static_ip
# apply
terraform apply "static_ip"

# Implicit and Explicit Dependencies

# Add a Cloud Storage bucket and an instance with an explicit dependency on the bucket
# New resource for the storage bucket our application will use
data "google_project" "project" {
}

resource "google_storage_bucket" "example_bucket" {
    name = data.google_project.project.name
    location = "US"
    website {
        main_page_suffix = "index.html"
        not_found_page = "404.html"
    }
}

# Create a new instance that usues this bucket
resource "google_compute_instance" "another_instance" {
    # Tells Terraform that this VM instance must be created only
    # after the storage bucket has been created.
    depends_on = [google_storage_bucket.example_bucket]
    name = "terraform-instance-2"
    machine_type = "f1-micro"
    boot_disk {
        initialize_params {
            image = "cos-cloud/cos-stable"
        }
    }
    network_interface {
        network = google_compute_network.vpc_network.self_link
        access_config { }
    }
}

# plan & apply
terraform plan
terraform apply

# remove these new resources from your configuration & run
terraform apply
################################################################################
# Provision Infrastructure

# Defining a Provisioner
resource "google_compute_instace" "vm_instance" {
    name = "terraform-instance"
    machine_type = "f1-micro"
    tags = ["web", "dev"]
    provisioner "local-exec" {
        command = "echo ${google_compute_instance.vm_instance.name}: 
        ${google_compute_instance.vm_instace.network_interface[0].access_config[0].nat_ip}
        >> ip_address.txt"
    }
    # ...
}

# Run terraform apply
terraform apply
# found nothing to do - and if you check, 
# you'll find that there's no ip_address.txt file on your local machine.
# rovisioners only run when a resource is created, but adding a provisioner
# does not force that resource to be destroyed and recreated.

# Use terraform taint to tell Terraform to recreate the instance
terraform taint google_compute_instance.vm_instace
terraform taint google_compute_instance.another_instace
# A tainted resource will be destroyed and recreated during the next apply
terraform apply
# check ip_address.txt

# finally destroy all infrastructure
terraform destroy
################################################################################