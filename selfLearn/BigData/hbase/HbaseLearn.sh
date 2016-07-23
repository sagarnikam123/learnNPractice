


# HBase-0.94.8
# Hadoop-1.0.4
#edit- 
	# 1)hbase-env.sh -  Java_Home,HBASE_OPTS,HBASE_MANAGES_ZK
	# 2)hbase-site.xml - hbase.rootdir,dfs.replication,zookeeper clientport,datadir,quorum, hbase.cluster


#Start hbase instance
bin/start-hbase.sh


#Start hbase shell
 bin/hbase shell

# Table 
create 'testtable','colfam1' # jsut creates simple table

#if want to create splitted table
create 'testtable','colfam1',{SPLITS => ['row-300','row-500','row-700','row-900']}

#listing of table
list

#inserting data
put 'testtable','myrow-1','colfam1:q1','value-1'
put 'testtable','myrow-2','colfam1:q2','value-2'
put 'testtable','myrow-3','colfam1:q3','value-3'

#inserts 1k rows into testtable using (ruby-IRB)
for i in '0'..'9' do for j in '0'..'9' do \
for k in '0'..'9' do put 'testtable', "row-#{i}#{j}#{k}", \
"colfam1:#{j}#{k}", "#{j}#{k}" end end end


#gettting data
get 'testtable','myrow-1'
# or 
scan 'testtable'


#deleting data from table
delete 'testtable','myrow-2','colfam1:q2'

#delete whole table
disable 'testtable'
drop 'testable'

# blogposts table
create 'blogposts', 'post', 'image'

put 'blogposts', 'post1', 'post:title', 'Hello World'  
put 'blogposts', 'post1', 'post:author', 'The Author'  
put 'blogposts', 'post1', 'post:body', 'This is a blog post'
put 'blogposts', 'post1', 'image:header', 'image1.jpg'  
put 'blogposts', 'post1', 'image:bodyimage', 'image2.jpg'


#Blog table
create 'blog', 'posts', 'images'

#put values
put 'blog','firstpost','posts:title','My HBase Post'
put 'blog','firstpost','posts:title','My HBase Post'
put 'blog','firstpost','posts:author','Anil'
put 'blog','firstpost','posts:location','Chicago'
put 'blog','firstpost','posts:content','HBase is cool'
put 'blog','firstpost','images:header', 'first.jpg'
put 'blog','firstpost','images:bodyimage', 'second.jpg'

# Exporting table into tsv using MapReduce
# bin/hbase org.apache.hadoop.hbase.mapreduce.Export <tablename> <outputdir> [<versions> [<starttime> [<endtime>]]]
# export path for required jars
export HADOOP_HOME=/home/hadoop/apache/hadoop-1.0.4
export PATH=$PATH:$HADOOP_HOME/bin
export HADOOP_CLASSPATH=/home/hadoop/apache/hadoop-1.0.4/hadoop-core-1.0.4.jar


bin/hbase org.apache.hadoop.hbase.mapreduce.Export blog hdfs://localhost:54310/ouput

#Importing csv into HBase table
# hadoop jar <path to hbase jar> importtsv -Dimporttsv.columns=a,b,c '-Dimporttsv.separator=,' <tablename> <inputdir> 

#bin/hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.columns=HBASE_ROW_KEY,d:c1,d:c2 -Dimporttsv.bulk.output=hdfs://storefile-outputdir <tablename> <hdfs-#data-inputdir>

# importing CSV file- (precaution:- look at column name & value)
bin/hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.columns=HBASE_ROW_KEY,length:x,length:y,length:z,breadth:a,breadth:b,breadth:c '-Dimporttsv.separator=,' xbox  hdfs://localhost:54310/input/box.csv


# importing TSV file  
create 'code','d'
bin/hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.columns=HBASE_ROW_KEY,d:c1,d:c2 code  hdfs://localhost:54310/input/code.tsv

# Box table
create 'dbox','length','breadth'

put 'dbox','square','length:x','100'
put 'dbox','square','length:y','200'
put 'dbox','square','length:z','300'

put 'dbox','square','breadth:a','1'
put 'dbox','square','breadth:b','2'
put 'dbox','square','breadth:c','3'




