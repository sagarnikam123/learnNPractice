# Metric/Numeric aggregation - No document returned
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "avg_age" : {
      "avg" : {
        "field" : "age"
      }
    }
  }
}'

# Numeric aggregation - 1 document returned
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 1,
  "aggregations" : {
    "avg_age" : {
      "avg" : {
        "field" : "age"
      }
    }
  }
}'

# Metric aggregation with search query
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 100,
  "query" : {
    "bool" : {
      "filter" : {
        "match" : { "state" : "minnesota"}
      }
    }
  },
  "aggregations" : {
    "avg_age" : {
      "avg" : {
        "field" : "age"
      }
    }
  }
}'

# stats
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 1,
  "aggs" : {
    "age_stats" : {
      "stats" : {
        "field" : "age"
      }
    }
  }
}'
