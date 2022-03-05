# Rabbit MQ installation
(Rabbit MQ on this server)

machine - ubuntuRabbitMQ (Sydney)
url-http://54.206.121.252:15672
username- azadparinda
password- azadparinda123

# AMI
t2.micro
ami- Ubuntu Server 14.04 LTS (HVM), SSD Volume Type - ami-fddabdc7
Instance ID - i-0d48c333
publc ip - 54.206.121.252


# Connect to AMI

# change permission
chmod 400 ubuntuRabbitMQ.pem
ssh -i ubuntuRabbitMQ.pem ubuntu@54.206.121.252

# To avoid warnings about unsigned packages, add our public key to your trusted key list using apt-key(8):
wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo apt-key add rabbitmq-signing-key-public.asc

# Add the following line to your /etc/apt/sources.list
(testing,unstable,stable)
# testing works
sudo vi /etc/apt/sources.list
deb http://www.rabbitmq.com/debian/ stable main

sudo apt-get update

# install
sudo apt-get install rabbitmq-server

# to manage the maximum amount of connections upon launch
sudo nano /etc/default/rabbitmq-server

# Enabling the Management Console
sudo rabbitmq-plugins enable rabbitmq_management

# Make sure that you have opened RabbitMQ  port â€œ80â€³  your firewall/router configuration.
sudo ufw allow 15672

# access using browser (required restart server to view)
http://54.206.121.252:15672

# checking server status(root user only)
invoke-rc.d rabbitmq-server status

# To restart the service:
service rabbitmq-server restart

# stop server
invoke-rc.d rabbitmq-server stop

# start server
invoke-rc.d rabbitmq-server start



# login
default username and password = â€œguestâ€� for the log in.


# guest login not enableed using remote login

# create a new user with admin grants:
# http://stackoverflow.com/questions/22850546/cant-access-rabbitmq-web-management-interface-after-fresh-install/22854222#22854222
# rabbitmqctl add_user test test
# rabbitmqctl set_user_tags test administrator
# rabbitmqctl set_permissions -p / test ".*" ".*" ".*"

rabbitmqctl add_user azadparinda azadparinda123
rabbitmqctl set_user_tags azadparinda administrator
rabbitmqctl set_permissions -p / azadparinda ".*" ".*" ".*"


open port
15672


# RabbitMQ on Windows

# Install Erlang OTP
# Set ERLANG_HOME & PATH
# install RabbitMQ server.
# enable management plugins
rabbitmq-plugins enable rabbitmq_management
# http://localhost:15672/	(open in browser)
# user-guest
# password - guest
# rabbitmqctl.bat status 	# checking status on cmd


# Adding a new user
rabbitmqctl add_user azadparinda azadparinda123
rabbitmqctl set_user_tags azadparinda administrator
rabbitmqctl set_permissions -p / azadparinda ".*" ".*" ".*"


# go to C:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.3.5\sbin
	rabbitmq-server.bat starts the broker as an application.
	rabbitmq-service.bat manages the service and starts the broker.
	rabbitmqctl.bat manages a running broker.
