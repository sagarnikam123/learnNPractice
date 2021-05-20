# Creating a Virtual Machine-GSP001

# Task 1: Create a new instance from the Cloud Console
gcloud auth list
gcloud config list project

# Task 2: Install an NGINX web server
sudo su -
apt-get update

apt-get install nginx -y
ps auwx | grep nginx

# Task 3: Create a new instance with gcloud
gcloud compute instances create gcelab2 --machine-type n1-standard-2 --zone asia-south1-c

# SSH to VM
gcloud compute ssh gcelab2 --zone asia-south1-c
