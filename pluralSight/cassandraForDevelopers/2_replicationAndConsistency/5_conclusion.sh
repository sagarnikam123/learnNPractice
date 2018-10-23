# run Simple 3 node cluster
docker run --name=n1 tobert/cassandra
docker inspect -f '{{ .NetworkSettings.IPAddress}}' n1
docker run --name=n2 tobert/cassandra -seeds 172.17.0.2
docker run --name=n3 tobert/cassandra -seeds 172.17.0.2
docker container ps

docker exec -it n1 cqlsh
create keyspace pluralsight with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 3 };
use pluralsight;
create table courses (id varchar primary key);

docker exec -it n1 nodetool pausehandoff
docker exec -it n1 nodetool statushandoff
docker stop n3
docker container ps

docker exec -it n1 cqlsh
insert into courses (id) values ('matlab-simulink');
docker start n3
docker exec -it n1 cqlsh
consistency all;
tracing on;
# look for digest mismatch in tracing output
# Digest mismatch: org.apache.cassandra.service.DigestMismatchException: Mismatch for key DecoratedKey(-1977971153325582977, 6d61746c61622d73696d756c696e6b)
# (8e77143e23ca8f71db68c31aae5a1c50 vs d41d8cd98f00b204e9800998ecf8427e) [SharedPool-Worker-1] | 2018-10-23 06:50:30.861000 | 172.17.0.2 |
select * from courses where id = 'matlab-simulink';

docker exec -it n1 nodetool enablehandoff
# check there is no Digest mismatch
select * from courses where id = 'matlab-simulink';
