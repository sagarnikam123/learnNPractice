
# example for Pig-2
export JAVA_HOME=/home/hadoop/apache/jdk1.7.0_10

#HADOOP-HOME
export HADOOP_HOME=/home/hadoop/apache/hadoop-1.0.4

#PIG_HOME
export PIG_HOME=/home/hadoop/apache/pig-0.11.1
export PIG_CLASSPATH=$HADOOP_HOME/conf


# PATH
export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$PIG_HOME/bin


# Copy to Hadoop
$HADOOP_HOME/bin/hadoop fs -copyFromLocal hotel.csv  input/hotel.csv


1,001,khamgaon,10,20,30,40
2,002,qhamgaon,11,21,31,41
3,003,whamgaon,12,22,32,42
4,004,ehamgaon,13,23,33,43
5,005,rhamgaon,14,24,34,44
6,006,thamgaon,15,25,35,45
7,007,yhamgaon,16,26,36,46
8,008,uhamgaon,17,27,37,47
9,009,ihamgaon,18,28,38,48

# step 1, load the csv file
A = load 'input/hotel.csv'
using PigStorage('\t') as
(id: int, hid: int, locale: chararray, r1: int, r2: int, r3: int, r4: int);

# step 2 fold each row by computing the average rating for each review
B = foreach A generate id, hid, (r1 + r2 + r3 + r4)/4 as stats;

# Step 3 group by hotelid, compute average and count
B1 = GROUP B BY hid;
C = FOREACH B1 GENERATE group, COUNT(B), AVG(B.stats);

# Step 4 save the results into an output file in the hdfs
store C into 'output/pig/stats' using PigStorage('\t');
