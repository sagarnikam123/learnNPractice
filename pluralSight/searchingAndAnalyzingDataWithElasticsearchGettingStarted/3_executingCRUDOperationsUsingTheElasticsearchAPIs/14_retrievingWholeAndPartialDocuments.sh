curl -XGET 'localhost:9200/products/mobiles/1?&pretty'

# document not exists
#{
#  "_index" : "products",
#  "_type" : "laptops",
#  "_id" : "2",
#  "found" : false
#}
curl -XGET 'localhost:9200/products/laptops/1?&pretty'

# no content
curl -XGET 'localhost:9200/products/mobiles/1?&pretty&_source=false'

# getting required fields only
curl -XGET 'localhost:9200/products/mobiles/1?&pretty&_source=name,reviews'
