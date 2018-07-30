curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "bool" : {
      "should" : [
      {
        "term" : {
          "state" : {
            "value" : "idaho"
          }
        }
      },
      {
        "term" : {
          "state" : {
            "value" : "california"
          }
        }
      }
      ]
    }
  }
}'

# with boost factor
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "bool" : {
      "should" : [
      {
        "term" : {
          "state" : {
            "value" : "idaho",
            "boost" : 2.0
          }
        }
      },
      {
        "term" : {
          "state" : {
            "value" : "california"
          }
        }
      }
      ]
    }
  }
}'
