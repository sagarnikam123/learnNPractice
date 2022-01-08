# Cloud Monitoring: Qwik Start

################################################################################

# Create a Compute Engine instance
# Add Apache2 HTTP Server to your instance-SSH
sudo apt-get update
sudo apt-get install apache2 php7.0
sudo service apache2 restart

# Click the External IP for lamp-1-vm instance to see the Apache2 default page

# install the Monitoring agents
curl -sSO https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh
sudo bash add-monitoring-agent-repo.sh
sudo apt-get update
sudo apt-get install stackdriver-agent

# install the Cloud Logging agent
curl -sSO https://dl.google.com/cloudagents/add-logging-agent-repo.sh
sudo bash add-logging-agent-repo.sh
sudo apt-get update
sudo apt-get install google-fluentd

# Create an uptime check
# Create an alerting policy
# Create a dashboard and chart
# View your logs
# Check the uptime check results and triggered alerts

################################################################################