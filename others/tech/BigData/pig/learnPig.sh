# LearnPig

# JAVA-HOME
export JAVA_HOME=/home/hadoop/apache/jdk1.7.0_10

#HADOOP-HOME
export HADOOP_HOME=/home/hadoop/apache/hadoop-1.0.4

# PIG-HOME
export PIG_HOME=/home/hadoop/apache/pig-0.11.1
export PIG_CLASSPATH=$HADOOP_HOME/conf
#$HADOOP_HOME/hadoop-core-1.0.4.jar:$HADOOP_HOME/lib/*:

# PATH
export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$PIG_HOME/bin


# local mode
pig -x local

# MapReduce mode (default)
pig -x mapreduce


# running with diff languages
bin/pig abc.perl
java -cp pig.jar org.apache.pig.Main -x local ....
java -cp pig.jar org.apache.pig.Main -x mapreduce ...

# example
A = load 'passwd' using PigStorage(':');  -- load the passwd file
B = foreach A generate $0 as id;  -- extract the user IDs
store B into ‘id.out’;  -- write the results to a file name id.out

#example-2
messages = load 'lines' using PigStorage(':');
outputs = Foreach messages Generate $0 as ID;
dump outputs;
