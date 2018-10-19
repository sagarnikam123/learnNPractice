# make sure we have cluster of 3 nodes running as in module 1
docker exec -it n1 nodetool status

# opening cqlsh prompt
docker exec -it n1 cqlsh

# creating keyspace
create keyspace pluralsight with replication = { 'class' : 'SimpleStrategy', 'replication_factor' :3 };
quit;

# view token range & endpoint details
docker exec -it n1 nodetool describering pluralsight
# check 'Owns(effective)' column values & note down
docker exec -it n1 nodetool status pluralsight

# drop keyspace & recreate with new replication factor
drop keyspace pluralsight;
create keyspace pluralsight with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1};
exit;
# check 'Owns(effective)' column values & compare with above one
docker exec -it n1 nodetool status pluralsight
# view token range & endpoint details
docker exec -it n1 nodetool describering pluralsight

# using end_token value
docker exec -it n1 nodetool ring pluralsight | grep 1412976896674704031

# stop container & remove them
docker container stop n1 n2 n3;docker rm n1 n2 n3;

# using multi-datacenter cluster from 1st module
docker run --name=n1 -d tobert/cassandra -dc DC1 -rack RAC1
docker run --name=n2 -d tobert/cassandra -dc DC1 -rack RAC2 -seeds 172.17.0.2
docker run --name=n3 -d tobert/cassandra -dc DC1 -rack RAC1 -seeds 172.17.0.2
docker run --name=n4 -d tobert/cassandra -dc DC2 -rack RAC1 -seeds 172.17.0.2

# create keyspace with network topology strategy
docker exec -it n1 cqlsh
create keyspace pluralsight with replication = { 'class' : 'NetworkTopologyStrategy', 'DC1' : 2, 'DC2' : 1 };
quit;

# check ring status
docker exec -it n1 nodetool describering pluralsight
docker exec -it n1 nodetool status pluralsight

# stop container & remove them
docker container stop n1 n2 n3 n4; docker container rm n1 n2 n3 n4;
