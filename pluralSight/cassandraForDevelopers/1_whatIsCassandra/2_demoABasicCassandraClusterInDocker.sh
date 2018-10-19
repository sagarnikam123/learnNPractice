# run cassandra container
docker container run --name=n1 -d tobert/cassandra
docker container ps

# run commands inside container
docker exec -it n1 nodetool status

# viewing ring
docker exec -it n1 nodetool ring

# login to cassandra container & look cassandra.yaml
docker exec -it n1 /bin/bash
cd /data/conf
cat cassandra.yaml
exit

# getting ip of container
# use this value as seeds
docker inspect -f '{{ .NetworkSettings.IPAddress}}' n1

# adding another node in cassandra cluster
# seeds - main/first node's ip
docker run --name n2 -d tobert/cassandra -seeds 172.17.0.2

# check new node's status in cluster
docker exec -it n1 nodetool status
docker exec -it n2 nodetool status

# check tokens - notice 2 ips present in left column
docker exec -it n1 nodetool ring

# login to node n2 & look for cassandra.yaml property
# check for seed_provider property
docker exec -it n2 /bin/bash
vi /data/conf/cassandra.yaml

# add third node to cluster
docker run --name=n3 tobert/cassandra -seeds 172.17.0.2
docker exec -it n1 nodetool status
docker container ps

# check rings
docker exec -it n1 nodetool ring

# check nodetool help
docker exec -it n1 nodetool help
docker exec -it n1 nodetool describecluster
docker exec -it n1 nodetool info

#stop docker container & remove them
docker container stop n1 n2 n3
docker container rm n1 n2 n3
