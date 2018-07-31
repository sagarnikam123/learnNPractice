# 2-level nested aggregations
curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "gender_bucket" : {
      "terms" : {
        "field" : "gender"
      },
      "aggs" : {
        "average_age" : {
          "avg" : {
            "field" : "age"
          }
        }
      }
    }
  }
}'

# 3-level nested aggregations
curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "gender_bucket" : {
      "terms" : {
        "field" : "gender"
      },
      "aggs" : {
        "age_ranges" : {
          "range" : {
            "field" : "age",
            "keyed" : true,
            "ranges" : [
            { "key" : "young", "to" : 30},
            { "key" : "middle-aged",  "from" : 40, "to" : 55},
            { "key" : "senior", "from" : 55}
            ]
        },
      "aggs" : {
        "average_age" : {
          "avg" : {
            "field" : "age"
          }
          }
          }
        }
      }
    }
  }
}'
