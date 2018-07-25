# PUT - create & update
# POST - only update

# creating "products" index
curl -XPUT 'localhost:9200/products?&pretty'

# creating "customers" index
curl -XPUT 'localhost:9200/customers?&pretty'

# creating "orders" index
curl -XPUT 'localhost:9200/orders?&pretty'

# check indices created
# default settings - 5 shards(pri) & 1(rep) replica of index
# health "Yellow" - due to single node cluster to store replica
curl -XGET 'localhost:9200/_cat/indices?v&pretty'
