# Rhipe library


# exporting paths-single node
Sys.setenv(HADOOP_HOME="/home/trendwise/apache/hadoop-1.0.4");
Sys.setenv(HADOOP_BIN="/home/trendwise/apache/hadoop-1.0.4/bin");
Sys.setenv(HADOOP_CONF_DIR="/home/trendwise/apache/hadoop-1.0.4/conf")
Sys.setenv(HADOOP_LIBS="/home/trendwise/apache/hadoop-1.0.4/lib")
Sys.setenv(HIVE_HOME="/home/trendwise/apache/hive-0.10.0");


#loading library
library(Rhipe)
rhinit() # initializing 
	#Rhipe: Using Rhipe.jar file
	#Initializing Rhipe v0.73
	#Initializing mapfile caches

# means Rhipe is ready to run
 hdfs.getwd() # getting working directory

setwd("~")        	# MUST SET THIS
hdfs.setwd("/tmp")     # MUST SET THIS
system("rm -Rf RhipeLib_0.67")
bashRhipeArchive("RhipeLib_0.67")
	# Creating new RhipeLib_0.67 
	# Copying contents of R.home() to RhipeLib_0.67 
	# Copying all detected R libraries to /home/trendwise/RhipeLib_0.67/library 
	# Copying all detected shared library dependencies to /home/trendwise/RhipeLib_0.67/lib 
	# Runner script found at /home/trendwise/RhipeLib_0.67/library/Rhipe/bin/RhipeMapReduce.sh 
	# Creating archive at /home/trendwise/RhipeLib_0.67.tar.gz 
	# Placing archive on HDFS at /tmp/RhipeLib_0.67.tar.gz 
	# 
	# ***********************************************************************
	# In the future use:
	# rhoptions(zips = '/tmp/RhipeLib_0.67.tar.gz')
	# rhoptions(runner = 'sh ./RhipeLib_0.67/library/Rhipe/bin/RhipeMapReduce.sh')
	# Setting these options now.
	# ***********************************************************************
hdfs.setwd("/") # set root as directory
rhls() # list files & folders in current directly
rhcp("/inputFile","/copiedInputFile") # copies file/folder from HDFS to HDFS
rhget("/inputFile","/home/trendwise/") # copy file/folder from HDFS to local
rhput("/home/trendwise/apache/hadoop-1.0.4/NOTICE.txt", "/notice") # copies only file from local to HDFS
rhread("/inputFile",type="text") # read key/value pairs or map file or text file from HDFS (by default sequence file)
rhdel("RCount") # deletes files/folder recursively



rhwrite(lapply(1:10, function(i) list(key = i, list(from=i,to=i+1))), "/tmp/in1", 1)
rhex(rhmr(ifolder = c("/tmp/in1"), ofolder = "/tmp/inout1", map = expression(rhcollect(map.keys[[1]], map.values[[1]]))))
rhex(rhmr(ifolder = c("/tmp/inout1/"), ofolder = "/tmp/out1", map = expression(rhcollect(map.keys[[1]], map.values[[1]]))))

mapred= list(mapreduce.fileoutputcommitter.marksuccessfuljobs = "false")
rhwrite(lapply(1:10, function(i) list(key = i, list(from=i,to=i+1))), "/tmp/in1", 1)
rhex(rhwatch(input = c("/tmp/in1"), output = "/tmp/inout1", map = expression(rhcollect(map.keys[[1]], map.values[[1]]))))
rhex(rhwatch(input = c("/tmp/inout1/"), output = "/tmp/out1", map = expression(rhcollect(map.keys[[1]], map.values[[1]]))))

z <- rhwatch(map=rhmap( rhcollect(k,r) ), reduce=0, input=rhfmt("/inputFile",type='text'),read=FALSE)

