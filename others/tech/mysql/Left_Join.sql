-- The Left Join

create database gh;
show databases;
use gh;
show tables;

CREATE TABLE Employee(
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

insert into Employee(id,first_name, last_name, start_date, end_date,   salary,  city,       Description) values(1,'Jason',    'Martin' ,  '19960725', '20060725', 1234.56, 'Toronto','Programmer');
insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(2,'Alison',   'Mathews',  '19760321', '19860221', 6661.78, 'Vancouver','Tester');
insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(3,'James',    'Smith',    '19781212', '19900315', 6544.78, 'Vancouver','Tester');
insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(4,'Celia',    'Rice',     '19821024', '19990421', 2344.78, 'Vancouver','Manager');
insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(5,'Robert',   'Black',    '19840115', '19980808', 2334.78, 'Vancouver','Tester');
insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(6,'Linda',    'Green',    '19870730', '19960104', 4322.78, 'New York',  'Tester');
insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(7,'David',    'Larry',    '19901231', '19980212', 7897.78, 'New York',  'Manager');
insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description) values(8,'James',    'Cat',      '19960917', '20020415', 1232.78, 'Vancouver', 'Tester');

insert into job (id, title) values (1,'Tester');
insert into job (id, title) values (2,'Accountant');
insert into job (id, title) values (3,'Developer');
insert into job (id, title) values (4,'COder');
insert into job (id, title) values (5,'Director');
insert into job (id, title) values (6,'Mediator');
insert into job (id, title) values (7,'Proffessor');
insert into job (id, title) values (8,'Programmer');
insert into job (id, title) values (9,'Developer');

drop table job;
drop table employee;
