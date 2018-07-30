# must
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "bool" : {
      "must" : [
      { "match" : { "street" : "ditmas" } },
      { "match" : { "street" : "avenue" } }
      ]
    }
  }
}'

# should
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "bool" : {
      "should" : [
      { "match" : { "street" : "ditmas" } },
      { "match" : { "street" : "avenue" } }
      ]
    }
  }
}'

# must not
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "bool" : {
      "must_not" : [
      { "match" : { "state" : "california texas" } },
      { "match" : { "street" : "lane street" } }
      ]
    }
  }
}'
