
# paramers enables gossiping file property snitch & configure file accordingly
docker run --name=n1 -d tobert/cassandra -dc DC1 -rack RAC1
docker container ps

# get ip
docker inspect -f '{{.NetworkSettings.IPAddress}}' n1

# check Datacenter value "DC1" & Rack
docker exec -it n1 nodetool status

# spin another node with same datacenter & different Rack
# seeds - main node's ip
docker run --name=n2 -d tobert/cassandra -dc DC1 -rack RAC2 -seeds 172.17.0.2
docker exec -it n1 nodetool status

# check tokens
# check Rack column
docker exec -it n2 nodetool ring
docker exec -it n2 /bin/bash

# look for endpoint_snitch
# endpoint_snitch: GossipingPropertyFileSnitch
vi /data/conf/cassandra.yaml

# check file which holds DC & rack information
vi /data/conf/cassandra-rackdc.properties

# add new node with different Datacenter
docker run --name=n3 -d tobert/cassandra -dc DC2 -rack RAC1 -seeds 172.17.0.2
# check newly added Datacenter-DC2
docker exec -it n1 nodetool status

# check ring status
# token range allocation broken down by datacenter
docker exec -it n1 nodetool ring

#stop docker container & remove them
docker container stop n1 n2 n3
docker container rm n1 n2 n3
