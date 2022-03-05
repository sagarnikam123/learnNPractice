# This article is reference manual for installation of RMySQL (R package for connecting MySQL & R) on linux/Ubuntu-64 bit
# same technique follows on 32 bit/64 bit - - windows/Mac with little difference.Check error & go accordingly.


#pre-requisite
1)R (latest version)
2)R-Studio/Rkward (optional)
3)MySQL c connector(optional if mysql installed in default folders,check '/usr/local/mysql' )
4)DBI & RMySQL packages


#installing RMySQL
0)install pre-requisite DBI packages(optionally u can installed it via internet)
	R CMD INSTALL DBI_0.2-5.tar.gz
1)R console/RStudio console,
	R> install.packages("RMySQL")

It will automatically install DBI & RMySQL...

if given error like "Warning in install.packages:installation of package ‘RMySQL’ had non-zero exit status"...means that packages not installed.
It not getting "mysql.h" & "mysql_init" in -lmysqlclient(required for configuration)

Error:----->
===================================================================================================
checking mysql.h usability... no
checking mysql.h presence... no
checking for mysql.h... no
checking for mysql_init in -lmysqlclient... no
checking for mysql_init in -lmysqlclient... no
checking for mysql_init in -lmysqlclient... no
checking for mysql_init in -lmysqlclient... no
checking for mysql_init in -lmysqlclient... no
checking for mysql_init in -lmysqlclient... no
checking for mysql_init in -lmysqlclient... no
checking /usr/local/include/mysql/mysql.h usability... no
checking /usr/local/include/mysql/mysql.h presence... no
checking for /usr/local/include/mysql/mysql.h... no
checking /usr/include/mysql/mysql.h usability... no
checking /usr/include/mysql/mysql.h presence... no
checking for /usr/include/mysql/mysql.h... no
checking /usr/local/mysql/include/mysql/mysql.h usability... no
checking /usr/local/mysql/include/mysql/mysql.h presence... no
checking for /usr/local/mysql/include/mysql/mysql.h... no
checking /opt/include/mysql/mysql.h usability... no
checking /opt/include/mysql/mysql.h presence... no
checking for /opt/include/mysql/mysql.h... no
checking /include/mysql/mysql.h usability... no
checking /include/mysql/mysql.h presence... no
checking for /include/mysql/mysql.h... no
==================================================================================================

#Solving error:-
a)extract mysql-connector-c-6.0.2-linux-glibc2.3-x86-64bit (any MySQL-C connector according 2 ur platform)
b)copy contents of library & include directory to respective folders......
c)cd /usr/local/include/
d)mkdir mysql
	cp -R '/home/praveen/mysql-connector-c-6.0.2-linux-glibc2.3-x86-64bit/include/.'    '/usr/local/lib64/R/include/.'
	cp -R '/home/praveen/mysql-connector-c-6.0.2-linux-glibc2.3-x86-64bit/lib/.'   '/usr/local/lib64/R/lib/.'
e)R CMD INSTALL RMySQL_0.9-3.tar.gz(installed if lastly ends with * DONE (RMySQL))

# or provide conf. arguments while installing
f)R CMD INSTALL  --configure-args='--with-mysql-inc=/usr/local/lib64/R/include/' --configure-args='--with-mysql-lib=/usr/local/lib64/R/lib/' RMySQL_0.9-3.tar.gz




#Running RMySQL package
1)on R console
	> library(RMySQL)
	Loading required package: DBI
means packages loads successfully.
2)	> con <- dbConnect(MySQL(), user="root", password="123",dbname="test")   #username,password,dbname are context dependent.
        > con
	<MySQLConnection:(26100,0)>    #means now ur connected with mysql,"con" is connection object
	> dbListTables(con) #show available table

	> dbGetQuery(con,"Mysql-query") # regular MySQL query

3)Refer RMySQL pdf for more commands
