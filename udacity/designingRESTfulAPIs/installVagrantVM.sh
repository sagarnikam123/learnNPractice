#Installing Vagrant VM For UdacityCourse Designing RESTful APIs

# Note: If you have already setup the vagrant VM from the Udacity course
# for Relational Databases (ud197) after 10/25/2015, you do not need to do any further setup

# install git
sudo apt-get install git

#Install VirtualBox from Software Center
# 

#Install Vagrant (https://www.vagrantup.com/downloads.html)
sudo dpkg -i vagrant_1.8.1_x86_64.deb

#Clone Vagrant file (VM configuration)
git clone http://github.com/udacity/fullstack-nanodegree-vm fullstack

# Run/launch virtual machine
cd fullstack/vagrant
vagrant up

#SSH to machine
ssh

 # To turn the virtual machine off (without deleting anything)
 vagrant halt
