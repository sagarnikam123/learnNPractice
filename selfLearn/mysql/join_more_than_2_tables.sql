-- Join more than two tables

create database gh;
show databases;
use gh;
show tables;

CREATE TABLE employee(
id int,
first_name VARCHAR(15),
last_name VARCHAR(15),
start_date DATE,
end_date DATE,
salary FLOAT(8,2),
city VARCHAR(10),
description VARCHAR(15)
);

create table job(
id int,
title VARCHAR(20)
);

insert into employee(id,first_name, last_name, start_date, end_date,   salary,  city,       Description) values(1,'Jason',    'Martin' ,  '19960725', '20060725', 1234.56, 'Toronto','Programmer');
insert into employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(2,'Alison',   'Mathews',  '19760321', '19860221', 6661.78, 'Vancouver','Tester');
insert into employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(3,'James',    'Smith',    '19781212', '19900315', 6544.78, 'Vancouver','Tester');
insert into employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(4,'Celia',    'Rice',     '19821024', '19990421', 2344.78, 'Vancouver','Manager');
insert into employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(5,'Robert',   'Black',    '19840115', '19980808', 2334.78, 'Vancouver','Tester');
insert into employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(6,'Linda',    'Green',    '19870730', '19960104', 4322.78, 'New York',  'Tester');
insert into employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(7,'David',    'Larry',    '19901231', '19980212', 7897.78, 'New York',  'Manager');
insert into employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(8,'James',    'Cat',      '19960917', '20020415', 1232.78, 'Vancouver', 'Tester');


insert into job (id, title) values (1,'Tester');
insert into job (id, title) values (2,'Accountant');
insert into job (id, title) values (3,'Developer');
insert into job (id, title) values (4,'COder');
insert into job (id, title) values (5,'Director');
insert into job (id, title) values (6,'Mediator');
insert into job (id, title) values (7,'Proffessor');
insert into job (id, title) values (8,'Programmer');
insert into job (id, title) values (9,'Developer');


-- DUTY TABLE
create table duty(id int,task VARCHAR(20));

-- inserting into DUTY table
insert into duty (id, task) values (1,'Test');
insert into duty (id, task) values (2,'Calculate');
insert into duty (id, task) values (3,'Program');
insert into duty (id, task) values (4,'Test');
insert into duty (id, task) values (5,'Manage');
insert into duty (id, task) values (6,'Talk');
insert into duty (id, task) values  (7,'Speak');
insert into duty (id, task) values (8,'Shout');
insert into duty (id, task) values  (9,'Walk');


-- showing tables inside databses;
select * from employee;
select * from job;
select * from duty;

-- joining tables query
select employee.first_name,employee.city,job.title,duty.task from employee,job,duty where (employee.id=job.id and employee.id=duty.id);

drop table duty;
drop table job;
drop table employee;
drop database gh;
