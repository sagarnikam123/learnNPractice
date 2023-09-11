# Spark install

# on hadoop single node cluster

# edit spark-env.sh
cd $SPARK_HOME
cp conf/spark-env.sh.template conf/spark-env.sh

# spark-env.sh
export SPARK_HOME=/Users/sagar/Documents/apache/spark-3.2.1-bin-hadoop3.2
export HADOOP_HOME=/Users/sagar/Documents/apache/hadoop-3.2.3
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop

# view version
bin/spark-submit --version
#######################################################################################################
# Start up spark-shell with yarn
bin/spark-shell --master yarn

sc # spark context
spark # spark session

#######################################################################################################

# Spark Shell Web UI
# http://localhost:4040/
#######################################################################################################
# example
# /bin/spark-submit --class path.to.your.Class --master yarn --deploy-mode cluster [options] <app jar> [app options]

# client mode-single
bin/spark-submit --master yarn --deploy-mode client --class org.apache.spark.examples.SparkPi examples/jars/spark-examples*.jar 10
# cluster mode
bin/spark-submit --class org.apache.spark.examples.SparkPi \
    --master yarn \
    --deploy-mode cluster \
    --driver-memory 4g \
    --executor-memory 2g \
    --executor-cores 1 \
    --queue thequeue \
    examples/jars/spark-examples*.jar \
    10

examples/jars/spark-examples_2.12-3.2.1.jar
#######################################################################################################
# enable prometheus metrics
cp conf/metrics.properties.template conf/metrics.properties

# uncomment below
#*.sink.prometheusServlet.class=org.apache.spark.metrics.sink.PrometheusServlet
#*.sink.prometheusServlet.path=/metrics/prometheus
#master.sink.prometheusServlet.path=/metrics/master/prometheus
#applications.sink.prometheusServlet.path=/metrics/applications/prometheus

bin/spark-shell --master yarn --conf spark.ui.prometheus.enabled=true \
--conf spark.executor.processTreeMetrics.enabled=true
#######################################################################################################
# Spark Standalone

# BTS, this invokes more general spark-submit script for launching applications
bin/run-example SparkPi 10

# with scala shell
# local[N] to run locally with N threads
# :quit - Exit the interpreter
# :help - for help
/bin/spark-shell --master local[2]
#######################################################################################################
