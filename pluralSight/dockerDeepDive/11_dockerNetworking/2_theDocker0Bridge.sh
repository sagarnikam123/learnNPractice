# "docker0" interface/virtual switch/bridge
ip a

# install bridge-utils pkg
sudo apt-get install bridge-utils
# sudo yum install bridge-utils

# find docker0's bride details
brctl show docker0
