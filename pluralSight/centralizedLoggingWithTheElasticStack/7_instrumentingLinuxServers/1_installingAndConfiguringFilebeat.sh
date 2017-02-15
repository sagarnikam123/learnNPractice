# 1_Installing and Configuring Filebeat

# most longs on
ll /var/log
tail /var/log/syslog

# intall & edit Filebeat config
nano filebeat.yml

#filebeat.yml
paths:
  - /var/log/syslog
document_type: syslog
tags: ["us-west-01"]
fields:
  globo_environment: staging

#output.elasticsearch:
  # Array of hosts to connect to.
  # hosts: ["localhost:9200"]

output.logstash:
  # The Logstash hosts
  hosts: ["localhost:5044"] # hosts: ["localhost:5043"]

# setting up the elasticsearch template for filebeat
cd filebeat
curl -u elastic -XPUT 'http://localhost:9200/_template/filebeat' -d@/home/quanta/apache/filebeat-5.2.0-linux-x86_64/filebeat.template.json
