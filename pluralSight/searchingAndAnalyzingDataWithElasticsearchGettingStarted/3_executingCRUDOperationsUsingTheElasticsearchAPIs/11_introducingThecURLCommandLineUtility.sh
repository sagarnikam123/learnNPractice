curl http://www.google.com
curl http://www.google.co.in

# indices
curl -XGET 'localhost:9200/_cat/indices?v&pretty'

# nodes
curl -XGET 'localhost:9200/_cat/nodes?v&pretty'

# health
curl -XGET 'localhost:9200/_cat/health?v&pretty'
