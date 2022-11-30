# ELK stack

####################################################################################################
# install elasticsearch
export ES_HOME=/Users/sagar/Documents/apache/elasticsearch-8.5.2
echo $ES_HOME

tar -xzf elasticsearch-8.5.2-darwin-x86_64.tar.gz
cd elasticsearch-8.5.2/

# Enable automatic creation of system indices
action.auto_create_index: .monitoring*,.watches,.triggered_watches,.watcher-history*,.ml*,*

# run
bin/elasticsearch

# Check that Elasticsearch is running
curl --cacert $ES_HOME/config/certs/http_ca.crt -u elastic https://localhost:9200

# reset password
./bin/elasticsearch-reset-password -i -u elastic
./bin/elasticsearch-reset-password -i -u kibana_system
./bin/elasticsearch-reset-password -i -u logstash_system

####################################################################################################
# install kibana

export KIBANA_HOME=/Users/sagar/Documents/apache/kibana-8.5.2
echo $KIBANA_HOME

# Start Elasticsearch and generate an enrollment token for Kibana (valid for 30 min)

# untar
tar -xvzf kibana-8.5.2-darwin-x86_64.tar.gz
cd kibana-8.5.2

# Configure Kibana to connect to Elasticsearch with a password
#config/kibana.yml
elasticsearch.username: "kibana_system"
elasticsearch.password: "admin123"

# change http -> https
elasticsearch.hosts: ["https://localhost:9200"]

# certificateAuthorities
elasticsearch.ssl.certificateAuthorities: [ "/Users/sagar/Documents/apache/kibana-8.5.2/config/cert/http_ca.crt" ]

# Create the Kibana keystore:
./bin/kibana-keystore create
# Add the password for the kibana_system user to the Kibana keystore:
./bin/kibana-keystore add elasticsearch.password

# run kibana
# When Kibana starts, enter the enrollment token to securely connect Kibana with Elasticsearch
bin/kibana

# check
http://localhost:5601/
####################################################################################################
# install logstash
tar -xvzf logstash-8.5.2-darwin-x86_64.tar.gz
cd logstash-8.5.2

# config/logstash.yml
xpack.monitoring.enabled: true
xpack.monitoring.elasticsearch.username: "logstash_system"
xpack.monitoring.elasticsearch.password: "admin123"
xpack.monitoring.elasticsearch.hosts: ["https://localhost:9200"]
xpack.monitoring.elasticsearch.ssl.certificate_authority: "/Users/sagar/Documents/apache/logstash-8.5.2/config/cert/http_ca.crt"

# run
# After starting Logstash, wait until you see "Pipeline main started" and then enter hello world at the command prompt
bin/logstash -e 'input { stdin { } } output { stdout {} }'

# list plugins
bin/logstash-plugin list
####################################################################################################
# Parsing Logs with Logstash

# default Logstash installation includes the Beats input plugin
# The input-elastic_agent plugin is the next generation of the input-beats plugin.

#filebeat
# examples/filebeat.yml
filebeat.inputs:
- type: log
  paths:
    - /Users/sagar/Downloads/logstash-tutorial.log
output.logstash:
  hosts: ["localhost:5044"]

# At the data source machine, run Filebeat
./filebeat -e -c examples/filebeat.yml -d "publish"

# logstash
# examples/first-pipeline.conf
input {
    beats {
        port => "5044"
    }
}
# The filter part of this file is commented out to indicate that it is optinoal.
# filter{ }
output {
    stdout {codec => rubydebug }
}

# verify configs
# --config.test_and_exit -> parses your configuration file and reports any errors
bin/logstash -f examples/first-pipeline.conf --config.test_and_exit

# start Logstash
bin/logstash -f examples/first-pipeline.conf --config.reload.automatic
####################################################################################################
# Parsing Web Logs with the Grok Filter Plugin

# logstash
# examples/first-pipeline.conf
input {
    beats {
        port => "5044"
    }
}
filter {
    grok {
        match => { "message" => "%{COMBINEDAPACHELOG}"}
    }
    geoip {
        source => "clientip"
    }
}
output {
    stdout { codec => rubydebug }
}

# press Ctrl+C to shut down Filebeat, delete the Filebeat registry file
sudo rm -rf data/registry/*

# restart Filebeat
./filebeat -e -c examples/filebeat.yml -d "publish"

# start Logstash
bin/logstash -f examples/first-pipeline.conf --config.reload.automatic
####################################################################################################
# Indexing Your Data into Elasticsearch

# logstash
# examples/first-pipeline.conf
input {
    beats {
        port => "5044"
    }
}
filter {
    grok {
        match => { "message" => "%{COMBINEDAPACHELOG}"}
    }
    geoip {
        source => "clientip"
        target => "geoip"
    }
}
output {
    elasticsearch {
        hosts => [ "https://localhost:9200" ]
        user => "elastic"
        password => "admin123"
        ssl => true
        ssl_certificate_verification => true
        cacert => "/Users/sagar/Documents/apache/logstash-8.5.2/config/cert/http_ca.crt"
    }
    stdout { codec => rubydebug }
}

# press Ctrl+C to shut down Filebeat, delete the Filebeat registry file
sudo rm -rf data/registry/*

# restart Filebeat
./filebeat -e -c examples/filebeat.yml -d "publish"

# start Logstash
bin/logstash -f examples/first-pipeline.conf --config.reload.automatic
####################################################################################################
# Testing Your Pipeline

# see a list of available indexes
curl 'localhost:9200/_cat/indices?v'

# Replace $DATE with the current date, in YYYY.MM.DD format:
curl -XGET 'localhost:9200/logstash-$DATE/_search?pretty&q=response=200'
####################################################################################################
# install filebeat

# To install Filebeat on your data source machine
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.5.2-darwin-x86_64.tar.gz
tar -xzvf filebeat-8.5.2-darwin-x86_64.tar.gz
cd filebeat-8.5.2

# examples/filebeat.yml
filebeat.inputs:
- type: log
  paths:
    - /Users/sagar/Downloads/logstash-tutorial.log
output.logstash:
  hosts: ["localhost:5044"]

# At the data source machine, run Filebeat
./filebeat -e -c examples/filebeat.yml -d "publish"

# Step 2: Connect to the Elastic Stack
output.elasticsearch:
  hosts: ["https://localhost:9200"]
  username: "admin"
  password: "admin"
  ssl:
    enabled: false

# Enable and configure data collection modulesedit
./filebeat modules list

./filebeat modules enable nginx
####################################################################################################
