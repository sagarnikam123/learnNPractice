-- Hive dbSNP query
-- for loading genomic data

create database dbSNP;
use dbSNP;

create table bedSNP(
chromosome string,
ChrId_1 bigint,
ChrId_2 bigint,
rsId string,
blank string,
zero string,
iD3 bigint,
str1 string,
str2 string,
type1 string,
type2 string,
method string,
num1 float,
num2 float,
which string,
how string,
num3 int,
class string,
num4 int,
str3 string,
num5 int,
num6 string,
num7 int,
num8 float,
blank2 string,
num9 int,
num10 int,
type3 string
)
row format delimited fields terminated by '\t' stored as textfile;


load data local inpath '/home/trendwise/Documents/dbSNP/zip/test.csv' overwrite into table bedSNP;


--bigSNP
create table bigSNP(
chromosome string,
ChrId_1 bigint,
ChrId_2 bigint,
rsId string,
blank string,
zero string,
iD3 bigint,
str1 string,
str2 string,
type1 string,
type2 string,
method string,
num1 float,
num2 float,
which string,
how string,
num3 int,
class string,
num4 int,
str3 string,
num5 int,
num6 string,
num7 int,
num8 float,
blank2 string,
num9 int,
num10 int,
type3 string
)
row format delimited fields terminated by '\t' stored as textfile;


load data local inpath '/home/trendwise/Documents/dbSNP/dataFile/bigSNP.csv' overwrite into table bigSNP;
