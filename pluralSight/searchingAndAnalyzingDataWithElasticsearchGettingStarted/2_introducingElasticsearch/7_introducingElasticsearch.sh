# check java version
java --version # requires Java-8

# extract
tar -xvzf elasticsearch-6.3.1.tar.gz

# starting with default clustername & default node name
bin/elasticsearch # default cluster name => "elasticsearch" & node name => "ClU9X6t" (any random name)

# starting with specific names
bin/elasticsearch -Ecluster.name=pluralsight_es -Enode.name=my_first_node
