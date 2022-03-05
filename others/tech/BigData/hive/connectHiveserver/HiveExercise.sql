-- Hive's exercies


-- Data Definition languagge

-- syntax closest to MySQL
-- No support for row level insert,update,delete and transaction


-- creating database (creates directory with .db extension for each database e.g. databaseName.db )
-- for each tables subdirectory inside database directory
-- exception: tables in the default database,doesn't have its own directory

-- DATABASE
CREATE DATABASE financials;

	CREATE DATABASE IF NOT EXISTS financials;

	CREATE SCHEMA IF NOT EXISTS BankSalary;

	--specifying diff. database location (overriding default location)
	CREATE DATABASE finnancials
	LOCATION '/path/to/interested/directory';

	--Descriptive comments
	CREAE DATABASE BankSalary
	COMMENT 'Contains all Salary of Workers for each year';

	--view descriptive comments
	DESCRIBE DATABAS BankSalary;

	-- viewing database
	SHOW DATABASES;

	--viewing tables
	SHOW  TABLES;

	--database with perticular  interest
	SHOW DATABASES LIKE 'f.*'  -- starts with f and ends with any other characters

	--adding annotations/metadata (extra properties) to Database
	-- no way to delete or unset DBPROPERTY
	CREATE DATABASE BankSalary
	WITH DBPROPERTIES ('creator'='AzadParinda','date'='2020-01-01');

	DESCRIBE DATABASE EXTENDED BankSalary;

	--altering DBPROPERTIES
	ALTER DATABAS BankSalary SET DBPROPERTIES ('edited-by'='NextGeneration_Power');

	--printing current database as prompt for precaution
	set hive.cli.print.current.db=true;
	USE default;

	--dropping database
	DROP DATABASE BankSalary; --By default,Hive won't permit to drop database if it contains tables
	DROP DATABAS IF EXISTS BankSalary;

	--dropping database with tables
	DROP DATABASE IF EXISTS BankSalary CASCADE;

	--default dropping behaviour
	DROP DATABASE IF EXISTS BankSalary RESTRICT;

-- TABLES
CREATE TABLE IF NOT EXISTS mydb.employees(
	name	STRING COMMENT 'Employee name',
	salary	FLOAT COMMENT 'Employee salary',
	subordinates	ARRAY<STRING> COMMENT 'Names of subordinates',
	deductions	MAP<STRING,FLOAT> COMMENT 'Keys are deductions names, values are percentages',
	address	STRUCT<street:STRING, city:STRING, state:STRING, zip:INT> COMMENT 'Home address',
	COMMENT 'Completely described table'
	TALPROPERTIES ('creator'='AzadParinda','created_at'='2020-12-02')
	LOCATION '/user/hive/warehouse/mydb.db/employees';


		--copying schema of existing table(but not data),u can specify LOCATION clause optionally
		CREATE TABLE IF NOT EXISTS mydb.employees2
		LIKE mydb.employees;

		--view tables
		USE mydb; -- selecting working database
		SHOW TABLES; -- TABLES in current working directory
		SHOW TABLES IN BankSalary;

		-- view tables of perticular interest(limiting lisitng of tables,i.e. using regular expression)
		SHOW TABLES 'empl.*';

		--no support for IN databaseName and regular expression combination

		--view table properties
		SHOW TBLEPROPERTIES; -- only after Hive v0.10.0

		--by default,Hive adds 2 table properties (only shown in detailed table information by EXTENDED)
		--also tableType e.g. EXTERNAL_TABLE OR MANAGED_TABLE (viewd only in detailed information)
		-- 1) last_modified_by
		-- 2) last_modified_time

		--viewing extended table properties
		DESCRIBE EXTENDED mydb.employees;
		DESCRIBE FORMATTED mydb.employees; --more readable,more verbose output

		--Managed/Internal table (uptill now above all)
		--External table
		CREATE EXTERNAL TABLE IF NOT EXISTS stocks (
		exchange	STRING,
		symbol		STRING,
		ymd			STRING,
		price_open	FLOAT,
		price_high	FLOAT,
		price_low	FLOAT,
		price_close	FLOAT,
		volume		INT,
		price_adj_close FLOAT )
		ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
		LOCATION '/data/stocks';

		--copying schema for External table
		CREATE EXTERNAL TABLE IF NOT EXISTS mydb.employees3
		LIKE 	mydb.employees
		LOCATION '/path/to/data';
