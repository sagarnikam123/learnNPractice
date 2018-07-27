curl -XGET 'localhost:9200/_cat/indices?v&pretty'

# search with request params (with size 2, show only 2 searches)
curl -XGET 'localhost:9200/products/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : { "match_all" : {} },
  "size" : 2
}'

# from index 2
curl -XGET 'localhost:9200/products/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : { "match_all" : {} },
  "from" : 2,
  "size" : 2
}'

# search multiple indices
curl -XGET 'localhost:9200/products,footwares/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : { "match_all" : {} },
  "from" : 5,
  "size" : 2
}'

# sort
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : { "match_all" : {} },
  "sort" : { "age" : { "order" : "desc" }},
  "size" : 20
}'
