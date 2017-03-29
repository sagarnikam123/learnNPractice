# 3_Creating a Git Repository

# configuring git on puppet master
sudo git config --global user.name "sagarnikam123"
sudo git config --global user.email "sagarnikam123@gmail.com"

# creating git repo
cd /etc/puppet/environments/production
sudo git init
sudo git add .
sudo git commit -m "Initial commit"

# tracking changes
git log
