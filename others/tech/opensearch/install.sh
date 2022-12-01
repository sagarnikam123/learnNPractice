#openSearch


##################################################################################
# disable memory paging and swapping
 # Disable memory paging and swapping.
 sudo swapoff -a

 # Edit the sysctl config file that defines the host's max map count.
 sudo vi /etc/sysctl.conf

 # Set max map count to the recommended value of 262144.
 vm.max_map_count=262144

 # Reload the kernel parameters.
 sudo sysctl -p
##################################################################################
 # Download the sample Compose file

# Using cURL:
curl -O https://raw.githubusercontent.com/opensearch-project/documentation-website/main/assets/examples/docker-compose.yml
# Using wget:
wget https://raw.githubusercontent.com/opensearch-project/documentation-website/main/assets/examples/docker-compose.yml
##################################################################################
# create and start the cluster as a background process
docker-compose up -d
# Confirm that the containers are running
docker-compose ps
##################################################################################
# Query the OpenSearch REST API to verify that the service is running
curl https://localhost:9200 -ku admin:admin
##################################################################################
# Explore OpenSearch Dashboards by opening http://localhost:5601/
# admin:admin
##################################################################################

##################################################################################
# Create an index and field mappings using sample data

# Download ecommerce-field_mappings.json
curl -O https://raw.githubusercontent.com/opensearch-project/documentation-website/main/assets/examples/ecommerce-field_mappings.json

# Download ecommerce.json
curl -O https://raw.githubusercontent.com/opensearch-project/documentation-website/main/assets/examples/ecommerce.json

# Define the field mappings with the mapping file
curl -H "Content-Type: application/x-ndjson" -X PUT "https://localhost:9200/ecommerce" -ku admin:admin --data-binary "@ecommerce-field_mappings.json"

##################################################################################

# Data Prepper Log Ingestion Demo Guide

docker-compose --project-name data-prepper up
docker run --name data-prepperx -v /Users/sagar/Documents/git/learnNPractice/others/tech/opensearch/dataPrepperConf/log_pipeline3.yaml:/usr/share/data-prepper/pipelines/log_pipeline.yaml --network "data-prepper_opensearch-net" opensearchproject/data-prepper:latest

echo '63.173.168.120 - - [04/Nov/2021:15:07:25 -0500] "GET /search/tag/list HTTP/1.0" 200 5003' >> test.log

echo "06:18:44.591 [Executor task launch worker for task 74459] ERROR EventUtil - setting datetime as null because dateResourceAttribute and  : dateTime is null" >> /Users/sagar/Downloads/logs/testlog/failedLogsOnly
##################################################################################

# Tar install
cd opensearch-2.4.0

export OPENSEARCH_JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.5.jdk/Contents/Home

# Run the demo security script.
./opensearch-tar-install.sh

# Send a request to port 9200:
 curl -X GET https://localhost:9200 -u 'admin:admin' --insecure

# Query the plugins endpoint
 curl -X GET https://localhost:9200/_cat/plugins?v -u 'admin:admin' --insecure

##################################################################################
# Run OpenSearch Dashboards using the tarball

tar -zxf opensearch-dashboards-2.4.0-linux-x64.tar.gz
cd opensearch-dashboards-2.4.0-linux-x64
./bin/opensearch-dashboards

##################################################################################
