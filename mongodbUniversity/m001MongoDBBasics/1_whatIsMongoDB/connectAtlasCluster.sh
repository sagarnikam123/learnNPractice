# userCredentials
# username: m001-student
# password: m001-mongodb-basics

###############################################################################
#   Install MongoDB Community Edition (on local)
###############################################################################

# Import the public key used by the package management system
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -

# Create a list file for MongoDB
sudo touch /etc/apt/sources.list.d/mongodb-org-5.0.list
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

# Install the MongoDB packages
sudo apt-get update
sudo apt-get install -y mongodb-org

# Verify that MongoDB has started successfully
sudo systemctl status mongod
# else restart
sudo systemctl restart mongod
# MongoDB will start following a system reboot
sudo systemctl enable mongod

# data directory /var/lib/mongodb
# log directory /var/log/mongodb
# configuration file /etc/mongod.conf

# Begin using MongoDB
mongosh
###############################################################################

# Lab: Connect to your Atlas Cluster
#mongosh "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net"
mongosh "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net"

# (deprecated)
#mongo "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/admin"
mongo "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net/admin"

###############################################################################
#mongosh "mongodb+srv://<your cluster>.mongodb.net/<database>" --username <your username>
mongosh "mongodb+srv://sandbox.xxxxx.mongodb.net/sample_airbnb" --username m001-student

#mongosh "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/<database>"
mongosh "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net/sample_supplies"
###############################################################################
# check at console
show dbs # show databases
show collections # show tables
use sample_geospatial
db.shipwrecks.find().limit(2) # view 2 records
###############################################################################