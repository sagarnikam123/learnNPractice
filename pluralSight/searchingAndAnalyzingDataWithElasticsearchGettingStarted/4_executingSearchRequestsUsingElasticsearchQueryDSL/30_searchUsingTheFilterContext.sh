curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "bool" : {
      "must" : { "match_all" : {}},
      "filter" : {
        "range" : {
          "age" : {
            "gte" : 20,
            "lte" : 30
          }
        }
      }
    }
  }
}'

# boolean compound query
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "bool" : {
      "must" : {
        "match" : {
          "state" : "alabama"
        }
      },
      "filter" : [
      { "term" : { "gender" : "female" } },
      { "range" : { "age" : {"gte" : "50"} }}
      ]
    }
  }
}'
