# A wordcount program using R on top of Hadoop
# (Tip:- Tutorial prepared on Linux System)

# preRequisite
	# Hadooop, R, inputFile (having few lines), mapper.R & reducer.R scripts

## STEP 1:
# make sure Hadoop is running,type "jps" on terminal
# should give running processes as --> DataNode, NameNode, JobTracker, TaskTracker,SecondaryNameNode
# R must be in path ,  Rscript --version
# R scripting front-end version 3.0.0 (2013-04-03)


##################  Run using R ##########################

## SETP 2: Checking/Running on command line with separate mappers and reducers
echo "foo foo quux labs foo bar quux" | Rscript mapper.R
echo "foo foo quux labs foo bar quux" | Rscript mapper.R  | sort -k1,1 | Rscript reducer.R

## SETP 3 a: Running on command line with separate mappers and reducers
cat '/home/trendwise/Desktop/Learn/RHadoop/inputFile' | Rscript mapper.R

## STEP 3 b: with inputFile
## cat inputFile | Rscript mapper.R | sort | Rscript reducer.R


##################  Run using Hadoop-R ##########################

#copy to HDFS
bin/hadoop dfs -copyFromLocal '/home/trendwise/apache/hadoop-1.0.4/README.txt'  /readme
bin/hadoop dfs -ls /

#running MapReduce program
bin/hadoop jar /home/trendwise/apache/hadoop-1.0.4/contrib/streaming/hadoop-streaming-1.0.4.jar \
-file  /home/trendwise/Desktop/Learn/RHadoop/mapper.R  -mapper /home/trendwise/Desktop/Learn/RHadoop/mapper.R \
-file /home/trendwise/Desktop/Learn/RHadoop/reducer.R  -reducer /home/trendwise/Desktop/Learn/RHadoop/reducer.R \
-input /readme -output /RCount

# View WordCount
bin/hadoop fs -cat /RCount/part-00000

#copy to local
bin/hadoop dfs -get /RCount/part-00000 /home/trendwise/Desktop/Learn/RHadoop/wcOutput

#deleting RCount folder in HDFS
bin/hadoop dfs -rmr /RCount


##################  Run using Java ##########################
bin/hadoop jar /home/trendwise/apache/hadoop-1.0.4/hadoop-examples-1.0.4.jar wordcount /readme /JavaCount

#deleting JavaCount
bin/hadoop dfs -rmr /JavaCount




bin/hadoop  jar /home/trendwise/apache/hadoop-1.0.4/contrib/streaming/hadoop-streaming-1.0.4.jar \
-file  /home/trendwise/Desktop/Learn/RHadoop/mapper.R  -mapper /home/trendwise/Desktop/Learn/RHadoop/mapper.R \
-file /home/trendwise/Desktop/Learn/RHadoop/reducer.R  -reducer /home/trendwise/Desktop/Learn/RHadoop/reducer.R \
-input /inputFile -output /RCount
