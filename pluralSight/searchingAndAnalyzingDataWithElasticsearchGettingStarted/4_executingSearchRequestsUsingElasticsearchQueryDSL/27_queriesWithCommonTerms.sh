curl -XGET 'localhost:9200/computers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "common" : {
      "reviews" : {
        "query" : "thisis great",
        "cutoff_frequency" : 0.001
      }
    }
  }
}'
