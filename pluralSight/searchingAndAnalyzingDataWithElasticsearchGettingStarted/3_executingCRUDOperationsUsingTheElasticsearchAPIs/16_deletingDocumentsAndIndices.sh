curl -XGET 'localhost:9200/products/mobiles/2?&pretty'
# deleting above document
  curl -XDELETE 'localhost:9200/products/mobiles/2?&pretty'
# check :- found = false
curl -XGET 'localhost:9200/products/mobiles/2?&pretty'

# chekcing paricular document within paricular index & type (doc which not present)
curl -I -XHEAD 'localhost:9200/products/mobiles/2?&pretty'

# check doc which is available
curl -I -XHEAD 'localhost:9200/products/mobiles/1?&pretty'

# check all indices
curl -XGET 'localhost:9200/_cat/indices?v&pretty'

# deleting entire index (products)
curl -XDELETE 'localhost:9200/products?pretty'
