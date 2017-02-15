# 1_Installing and Configuring Packetbeat on Windows

# install WinpCap on Windows before installing Packetbeat
# https://www.winpcap.org/
#for Linux
sudo apt-get install tcpdump
sudo apt-get install libpcap-dev

# to give tcpdump the permission and capability to allow raw packet captures and network interface manipulation.
# Add a capture group and add yourself to it
sudo groupadd pcap
sudo usermod -a -G pcap <user>

# Modify the group ownership and permissions of the tcpdump binary so that only users in the pcap group can run it:
sudo chgrp pcap /usr/sbin/tcpdump
sudo chmod 750 /usr/sbin/tcpdump

# setcap to give tcpdump the necessary permissions
# Set the CAP_NET_RAW and CAP_NET_ADMIN capabilities on the tcpdump binary to allow it to run without root access
# (These options allow raw packet captures and network interface manipulation):
setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump

# edit packetbeat.yml
tags: ["us-east-01"]
#output.elasticsearch:
  # Array of hosts to connect to.
  # hosts: ["localhost:9200"]
output.logstash:
  # The Logstash hosts
  hosts: ["localhost:5044"]

# setting up the elasticsearch template for Packetbeat
cd packetbeat
curl -u elastic -XPUT 'http://localhost:9200/_template/packetbeat' -d@/home/quanta/apache/packetbeat-5.2.0-linux-x86_64/packetbeat.template.json
