# Compute Engine: Qwik Start - Windows

# Setup and requirements
###############################################################################
# Create a virtual machine instance
    - Compute Engine > VM instances -> click Create Instance (instance-1)
    - Region-> us-central1 (Iowa), Zone-> us-central1-a
    - Machine configuration-> Machine family-> Genral Purpose -> Series - N1 ->
        machine type-> n1-standard-1
    - Boot disk - Windows Server 2012 R2 Datacenter
    - Identity & API access -> Service account - > Compute Engine default service account -> 
        Access Scopes - Allow default access
    - Create
###############################################################################
# Activate Cloud Shell

# list the active account name 
gcloud auth list

# list the project ID
gcloud config list project

# To view your default region and zone
gcloud config get-value compute/region
gcloud config get-value compute/zone

# View available regions and zones
gcloud compute regions list
gcloud compute zones list

# To set the default region and zone in your local client
gcloud config set compute/region us-central1
gcloud config set compute/zone us-central1-a
###############################################################################
# Remote Desktop (RDP) into the Windows Server
# Test the status of Windows Startup
# To see whether the server instance is ready for an RDP connection
# If prompted, type n and press Enter.
gcloud compute instances get-serial-port-output instance-1

# To set a password for logging into the RDP,
gcloud compute reset-windows-password instance-1 --zone us-central1-a --user admin

# Copy and pasting with the RDP client
ip_address: 104.154.231.111
password:   
username:   admin
###############################################################################