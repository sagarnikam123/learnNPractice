
#PATH EXPORT-
#   Cluster
export MAHOUT_HOME=/home/hadoop/apacheC/mahout-distribution-0.7
export PATH=$PATH:$MAHOUT_HOME/bin

#JAVA-1.7.0_10
export JAVA_HOME=/home/hadoop/apacheC/jdk1.7.0_10
export PATH=$PATH:$JAVA_HOME/bin

#Hadoop-1.0.4
export HADOOP_HOME=/home/hadoop/apacheC/hadoop-1.0.4
export HADOOP_CONF_DIR=/home/hadoop/apacheC/hadoop-1.0.4/conf
export PATH=$PATH:$HADOOP_HOME/bin

# http://cloudblog.8kmiles.com/2012/01/31/apache-mahout-a-clustering-example/

# 2) Playing with the Mahout recommendation engine on a Hadoop cluster
# http://chimpler.wordpress.com/2013/02/20/playing-with-the-mahout-recommendation-engine-on-a-hadoop-cluster/

#Recommendation engine
# putting into HDFS
bin/hadoop fs -put $MAHOUT_HOME/ml-100k/u.data  /u.data

#running Mahout recorremndations job
$HADOOP_HOME/bin/hadoop jar /home/hadoop/apacheC/mahout-distribution-0.7/mahout-core-0.7-job.jar   org.apache.mahout.cf.taste.hadoop.item.RecommenderJob \
 -s  SIMILARITY_COOCCURRENCE --input /u.data --output /output

#getting output from HDFS
bin/hadoop fs -getmerge /output output.txt

# showing recommendations
python show_recommendations.py 4 u.data u.item output.txt




# Using the Mahout Naive Bayes Classifier to automatically classify Twitter messages
# http://chimpler.wordpress.com/2013/03/13/using-the-mahout-naive-bayes-classifier-to-automatically-classify-twitter-messages/

git clone https://github.com/fredang/mahout-naive-bayes-example.git
cd cd mahout-naive-bayes-example/
# compile java programs
mvn clean package assembly:single

# install python twitter packages
git clone https://github.com/tweepy/tweepy.git
cd tweepy
sudo python setup.py install

# edit in scripts/twitter_fetcher.py (PUT YOUR CREDENTIALS)
CONSUMER_KEY='REPLACE_CONSUMER_KEY'
CONSUMER_SECRET='REPLACE_CONSUMER_SECRET'
ACCESS_TOKEN_KEY='REPLACE_ACCESS_TOKEN_KEY'
ACCESS_TOKEN_SECRET='REPLACE_ACCESS_TOKEN_SECRET'

# download tweets ( tweets-train.tsv contains a list of tweets in a tab separated value format.
# The first number is the tweet id followed by the tweet message:)
python scripts/twitter_fetcher.py 5 > scripts/tweets-train.tsv

# To transform this into a training set, you can use your favorite editor and add the category of the tweet
# at the beginning of the line followed by a tab characte

# For the classifier to work properly, this set must have at least 50 tweets messages in each category.
#  convert the training set to the hadoop sequence file format
java -cp target/twitter-naive-bayes-example-1.0-jar-with-dependencies.jar com.chimpler.example.bayes.TweetTSVToSeq scripts/tweets-train.tsv tweets-seq


#load into HDFS
bin/hadoop fs -put /home/hadoop/apacheC/mahout-distribution-0.7/mahout-naive-bayes-example/scripts/tweets-seq /tweets-seq


# run mahout to transform the training sets into vectors using tfidf weights(term frequency x document frequency)
bin/mahout seq2sparse -i /tweets-seq -o /tweets-vectors

# splits the set into two sets: a training set and a testing set
bin/mahout split -i /tweets-vectors/tfidf-vectors --trainingOutput /train-vectors --testOutput /test-vectors --randomSelectionPct 40 --overwrite --sequenceFiles -xm sequential


# use the training set to train the classifier
mahout trainnb -i train-vectors -el -li labelindex -o model -ow -c  #  creates the model(matrix word id x label id) and a label index(association label and label id)

# To test that the classifier is working properly on the training set:
mahout testnb -i train-vectors -m model -l labelindex -ow -o tweets-testing -c

# And on the testing set:
mahout testnb -i test-vectors -m model -l labelindex -ow -o tweets-testing -c
