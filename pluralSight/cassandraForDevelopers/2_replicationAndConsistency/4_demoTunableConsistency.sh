# make sure you have 3 node cluster up
docker run --name=n1 tobert/cassandra
docker inspect -f '{{ .NetworkSettings.IPAddress}}' n1
docker run --name=n2 tobert/cassandra -seeds 172.17.0.2
docker run --name=n3 tobert/cassandra -seeds 172.17.0.2

docker exec -it n1 cqlsh
# create keyspace
create keyspace pluralsight with replication = {'class' : 'SimpleStrategy', 'replication_factor' :3};
use pluralsight;
# creating table
create table courses (id varchar primary key);
# checking consistency
consistency;
insert into courses (id) values ('cassandra-developers');
# setting consistency to Quoram level
consistency quorum;
insert into courses (id) values ('building-asynchronous-restful-services-jersey');
consistency all;
tracing on;
insert into courses (id) values ('node-intro');
tracing off;
quit;

# stop one node n3 & try to write with consistency=ALL
docker stop n3
docker exec -it n1 cqlsh
use pluralsight;
consistency all;
# Unavailable: code=1000 [Unavailable exception] message="Cannot achieve consistency level ALL" info={'required_replicas': 3, 'alive_replicas': 2, 'consistency': 'ALL'}
insert into courses (id) values ('google-charts-by-example');

# with consistency=QUORUM
consistency quorum;
insert into courses (id) values ('google-charts-by-example');
select * from courses where id= 'cassandra-developers';

consistency all;
# Unavailable: code=1000 [Unavailable exception] message="Cannot achieve consistency level ALL" info={'required_replicas': 3, 'alive_replicas': 2, 'consistency': 'ALL'}
select * from courses where id= 'cassandra-developers';

#  bring up & checking hinted hand_off
docker start n3
consistency all;
select * from courses where id= 'cassandra-developers';

docker stop n1 n2 n3; docker rm n1 n2 n3;
# multi-Datacenter architecture
docker run --name=n1 -d tobert/cassandra -dc DC1 -rack RAC1
docker inspect -f '{{.NetworkSettings.IPAddress}}' n1
docker run --name=n2 -d tobert/cassandra -dc DC1 -rack RAC2 -seeds 172.17.0.2
docker run --name=n3 -d tobert/cassandra -dc DC1 -rack RAC3 -seeds 172.17.0.2
docker run --name=n4 -d tobert/cassandra -dc DC2 -rack RAC1 -seeds 172.17.0.2
docker exec -it n1 nodetool status

docker exec -it n1 cqlsh
create keyspace pluralsight with replication = {'class' : 'NetworkTopologyStrategy', 'DC1' : 3, 'DC2' : 1};
use pluralsight;
create table courses (id varchar primary key);
consistency;
consistency local_one;
insert into courses (id) values ('cassandra-developers');

# stop 1 docker node & check nodetool status
docker stop n4
docker exec -it n1 nodetool status

use pluralsight;
consistency each_quorum;
# Unavailable: code=1000 [Unavailable exception] message="Cannot achieve consistency level EACH_QUORUM" info={'required_replicas': 1, 'alive_replicas': 0, 'consistency': 'EACH_QUORUM'}
insert into courses (id) values ('node-intro');
# change consistency
consistency local_quorum;
insert into courses (id) values ('node-intro');

docker stop n1 n2 n3 n4; docker rm n1 n2 n3 n4;
