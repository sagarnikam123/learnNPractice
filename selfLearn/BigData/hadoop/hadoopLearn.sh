# Hadoop example runs

# example list
bin/hadoop jar hadoop-examples-1.0.4.jar 

#exporting NCDC examples jar file (customized example.jar file)
export HADOOP_CLASSPATH=/home/hadoop/Documents/hadoop_book/dataset/hadoop-examples.jar

# 1) Simple Word Count
 bin/hadoop  jar hadoop-examples-1.0.4.jar wordcount  /input/wordcount/bigFile /output/wordcount

# 2) Max Temp prog.
 bin/hadoop tryfirst.MaxTemperature /input/ncdc/1901 /output/ncdc001

# 3) Sudoku solver
 bin/hadoop jar hadoop-examples-1.0.4.jar sudoku puzzle.data
 
# 4) Multifiles WordCount
 bin/hadoop jar hadoop-examples-1.0.4.jar  multifilewc /input/multifiles  /output/multifiles
 
# 5) Grep (Gives lines having "have" word)-runs 2 MR programs in sequence
 bin/hadoop  jar hadoop-examples-1.0.4.jar grep  /input/grepfiles/ /output/grep/  .*have.*



# Hadoop Home
export HADOOP_HOME=/home/hadoop/apache/hadoop-1.0.4 

# BenchMarking HDFS cluster to analyze IO (requires $HADOOP_HOME)

# 1-  Write Performance using hadoop-test.jar (writes in /benchmarks/TestDFSIO folder)
 bin/hadoop jar hadoop-test-1.0.4.jar TestDFSIO -write -nrFiles 3 -fileSize 10 -resFile firstDFSioTest
# ----- TestDFSIO ----- : write
#            Date & time: Fri Jun 07 15:24:02 IST 2013
#        Number of files: 3
# Total MBytes processed: 30
#      Throughput mb/sec: 35.294117647058826
# Average IO rate mb/sec: 36.95392990112305
#  IO rate std deviation: 8.403270232776732
#     Test exec time sec: 40.034
 
# 2- Read Performance  
bin/hadoop jar hadoop-test-1.0.4.jar TestDFSIO -read -nrFiles 3 -fileSize 10 -resFile firstDFSioTest_read
 
 
 
# Big file puttting into HDFS
bin/hadoop fs -put /home/hadoop/Documents/weather_hadoop/1901_GB  /input/weather/1901_GB 
