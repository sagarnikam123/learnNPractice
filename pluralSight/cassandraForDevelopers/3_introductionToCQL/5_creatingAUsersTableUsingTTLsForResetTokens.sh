# mouting local directory inside docker container
docker run --name n1 -v /home/quanta/Documents/git/learnNPractice/pluralSight/cassandraForDevelopers/3_introductionToCQL:/scripts -d tobert/cassandra

docker exec -it n1 /bin/bash
cd /scripts
ls

cqlsh
source '/scripts/courses.cql';
use pluralsight;
desc tables;
select * from courses;

expand on;
select * from courses;
expand off;

select id, cc, writetime(cc) from courses where id = 'advanced-javascript';
update courses set cc = true where id = 'advanced-javascript';
select id, cc, writetime(cc) from courses where id = 'advanced-javascript';

select id, name, writetime(name) from courses where id = 'advanced-javascript';
# Note:- writetme here & from first query is same

select id, token(id) from courses;
# InvalidRequest: code=2200 [Invalid query] message="No secondary indexes on the restricted columns support the provided operators: "
select * from courses where author= 'Adron Hall';

create table users (
id varchar primary key,
first_name varchar,
last_name varchar,
email varchar,
password varchar
) with  comment = 'A table of users';

insert into users (id, first_name, last_name) values ('john-doe', 'John', 'Doe');
update users set first_name = 'Jane', last_name = 'Doe' where id = 'jane-doe';
select * from users;

alter table users add reset_token varchar;
update users using ttl 120 set reset_token = 'abc123' where id = 'john-doe';
select ttl(reset_token) from users where id = 'john-doe';
select * from users where id = 'john-doe';

# run this after 2 minutes or 120 sections (ttl)
# find 1 tombstone cells in tracing trace
tracing on;
select * from users where id = 'john-doe';
