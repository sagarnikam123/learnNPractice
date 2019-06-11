# Getting Started with Cloud Shell & gcloud-GSP002

# survey
gcloud alpha survey
gcloud help -- bigtable

# Use the command line
gcloud -h
gcloud config --help  # view and edit Cloud SDK properties
gcloud help config

# Use your home directory
cd $HOME
vi ./.bashrc

# Using gcloud commands
gcloud config list
gcloud config list --all

# Managing Cloud Storage data
gsutil mb gs://<unique-name>
gsutil mb gs://neelambari-joshi
gsutil ls

vi test.dat
i
# upload some data to the bucket
gsutil cp test.dat gs://neelambari-joshi
