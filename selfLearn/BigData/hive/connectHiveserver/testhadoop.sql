-- creating tables to import into hbase using sqoop

create database testhadoop;
use testhadoop;

CREATE TABLE employee(
	empid INT(2),
	empname varchar(20),
	salray int (6)
);
INSERT INTO employee VALUES 
(1,'emp1',15000),
(1,'emp1',15000),
(2,'emp2',12200),
(3,'emp3',99999),
(4,'emp4',17687),
(5,'emp5',45788);
