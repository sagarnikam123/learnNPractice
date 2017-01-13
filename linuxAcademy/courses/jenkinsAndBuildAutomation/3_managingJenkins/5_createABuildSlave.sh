# Create a Build Slave

# go to another/slave machine
sudo su jenkins
cd
ssh-keygen

# copy ssh id to localhost
ssh-copy-id jenkins@localhost
ssh jenkins@localhost
ssh-copy-id jenkins@54.169.84.69
ssh-copy-id jenkins@172.31.24.82


# go to manage jenkins -> manage nodes
