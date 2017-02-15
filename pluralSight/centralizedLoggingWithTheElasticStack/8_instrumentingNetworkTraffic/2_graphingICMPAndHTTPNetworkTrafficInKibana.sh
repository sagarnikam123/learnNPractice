# 2_Graphing ICMP and HTTP Network Traffic in Kibana

# start Packetbeat
bin/elasticsearch
bin/logstash -f beats.conf
bin/kibana

# Exiting: Initializing sniffer failed: Error creating sniffer: any: You don't have permission to capture on that device (socket: Operation not permitted)
# login to 'root' if given above error
./packetbeat

#Discover in kibana
# beat.hostname:"quanta" && type:icmp
# beat.hostname:"quanta" && type:http
