Sys.setenv(HADOOP_HOME="/home/istvan/hadoop")
Sys.setenv(HADOOP_CMD="/home/istvan/hadoop/bin/hadoop")

library(rmr2)
library(rhdfs)

setwd("/home/istvan/rhadoop/blogs/")
gdp <- read.csv("GDP_converted.csv")
head(gdp)

hdfs.init()
gdp.values <- to.dfs(gdp)

# AAPL revenue in 2012 in millions USD
aaplRevenue = 156508

gdp.map.fn <- function(k,v) {
key <- ifelse(v[4] < aaplRevenue, "less", "greater")
keyval(key, 1)
}

count.reduce.fn <- function(k,v) {
keyval(k, length(v))
}

count <- mapreduce(input=gdp.values,
                   map = gdp.map.fn,
                   reduce = count.reduce.fn)

from.dfs(count)
