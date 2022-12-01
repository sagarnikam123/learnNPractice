

# 2. Unpack
tar -xvzf spark-bench_2.3.0_0.4.0-RELEASE.tgz
cd spark-spark-bench_2.3.0_0.4.0-RELEASE/

# bin/spark-bench-env.sh
SPARK_HOME
SPARK_MASTER_HOST

# 3. Set the environment variable for $SPARK_HOME
export SPARK_HOME=/Users/sagar/Documents/apache/spark-2.4.8-bin-hadoop2.6

# 4. Set the environment variable for your Spark master.
export SPARK_MASTER_HOST=yarn
# or
export SPARK_MASTER_HOST=local[*]

# 5. Run the examples!
bin/spark-bench.sh examples/minimal-example.conf


#########################################################################################
# CSV vs. Parquet

bin/spark-bench.sh examples/csv-vs-parquet.conf
bin/spark-bench.sh examples/csv-vs-parquet-sql-only.conf


bin/hdfs dfs -ls /tmp/csv-vs-parquet

bin/hdfs dfs -ls /tmp/csv-vs-parquet/kmeans-data.csv
bin/hdfs dfs -ls /tmp/csv-vs-parquet/kmeans-data.parquet

bin/hdfs dfs -tail /tmp/csv-vs-parquet/kmeans-data.csv/part-00000-830174e9-6647-40ff-b9d7-96bab5ab7f76-c000.csv
bin/hdfs dfs -cat /tmp/csv-vs-parquet/kmeans-data.csv/part-00000-830174e9-6647-40ff-b9d7-96bab5ab7f76-c000.csv | head

bin/hdfs dfs -cat /tmp/csv-vs-parquet/kmeans-data.parquet/part-00000-d18a2df1-5666-4137-92b9-aa6b11a95e13-c000.snappy.parquet | head
#########################################################################################
