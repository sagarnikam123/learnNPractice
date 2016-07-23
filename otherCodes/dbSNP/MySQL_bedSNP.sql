-- MySQL dbSNP data
-- for loading genomic data

mysql -u root --local-infile=1 --skip-line-numbers=1
create database dbSNP;
use dbSNP;

create table bedSNP(
chromosome varchar(10),
ChrId_1 bigint,
ChrId_2 bigint,
rsId varchar(10),
blank varchar(5),
zero varchar(3),
iD3 bigint,
str1 varchar(100),
str2 varchar(20),
type1 varchar(20),
type2 varchar(20),
method varchar(200),
num1 float,
num2 float,
which varchar(400),
how varchar(20),
num3 int(5),
class varchar(100),
num4 int(5),
str3 varchar(400),
num5 int(5),
num6 varchar(10),
num7 int(10),
num8 float,
blank2 varchar(5),
num9 int(5),
num10 int(5),
type3 varchar(20)
);


load data local infile '/home/trendwise/Documents/dbSNP/zip/test.csv' into table bedSNP
fields terminated by '\t'
enclosed by '"'
lines terminated by '\n';

load data local infile '/home/trendwise/Documents/nobel/transwithoutfeildnames.csv'  into table nobel
fields terminated by ','
enclosed by '"'

lines terminated by '\n';




