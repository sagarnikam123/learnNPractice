# importing data from database
# before runnning the session install "RMySQL" package in R
# and make some dummy tables



library(RMySQL) # loads RMySQL packages
# dbConnect - Connect to a DBMS going through the appropriate authorization procedure
con <- dbConnect("MySQL", dbname="bookStore", user="root", password="")
con # connection information
dbGetInfo(con) # detailed connection information

dbListTables(con) #show available table
dbReadTable(con,"books") # reading tables
books=dbReadTable(con,"books")
names(books) # names of fields
books["BookID"] # getting single columns






> library(RMySQL) # loads RMySQL packages
> # dbConnect - Connect to a DBMS going through the appropriate authorization procedure
> con <- dbConnect("MySQL", dbname="bookStore", user="root", password="")
> con # connection information
<MySQLConnection:(16720,2)>
> dbGetInfo(con) # detailed connection information
$host
[1] "localhost"

$user
[1] "root"

$dbname
[1] "bookStore"

$conType
[1] "Localhost via UNIX socket"

$serverVersion
[1] "5.5.31-0ubuntu0.12.04.2"

$protocolVersion
[1] 10

$threadId
[1] 53

$rsId
list()

> dbListTables(con) #show available table
[1] "authorBook" "authors"    "books"      "qAns"
> dbReadTable(con,"books") # reading tables
   BookID      BookTitle Copyrith
1     123         kkkkkA     2013
2     321          TORRA     2000
3   12786           java     1934
4   13331          MySQL     1919
5   14356            PHP     1966
6   15729           PERL     1932
7   16284         Oracle     1996
8   17695         Pl/SQL     1980
9   19264     JavaScript     1992
10  19354 www.java2s.com     1993
> books=dbReadTable(con,"books")
> names(books) # names of fields
[1] "BookID"    "BookTitle" "Copyrith"
> books["BookID"] # getting single columns
   BookID
1     123
2     321
3   12786
4   13331
5   14356
6   15729
7   16284
8   17695
9   19264
10  19354
