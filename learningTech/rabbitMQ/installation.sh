# RabbitMQ installation
# https://www.rabbitmq.com/install-debian.html


# Using rabbitmq.com APT Repository
# add the APT repository to your /etc/apt/sources.list.d
# stable, testing or unstable
echo 'deb http://www.rabbitmq.com/debian/ stable main' | sudo tee /etc/apt/sources.list.d/rabbitmq.list

# add public key to avoid warnings about unsigned packages
wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -

# update & install
sudo apt-get update
sudo apt-get install rabbitmq-server

# Running server
service rabbitmq-server { start|stop|status|rotate-logs|restart|condrestart|try-restart|reload|force-reload }
invoke-rc.d rabbitmq-server { start|stop|status|rotate-logs|restart|condrestart|try-restart|reload|force-reload }


# Managing the Broker
rabbitmqctl stop
rabbitmqctl status

# Enable Management pluging
rabbitmq-plugins enable rabbitmq_management
# web UI -  http://localhost:15672/
# Default user access
# default broker user - guest
# password - guest.
# HTTP API and its documentation -  http://localhost:15672/api/
# Download rabbitmqadmin - http://localhost:15672/cli/
