curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "gender_bucket" : {
      "terms" : {
        "field" : "gender"
      }
    }
  }
}'

curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "age_bucket" : {
      "terms" : {
        "field" : "age"
      }
    }
  }
}'

# with range query
curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "age_ranges" : {
      "range" : {
        "field" : "age",
        "ranges" : [
        { "to" : 30},
        { "from" : 30, "to" : 40},
        { "from" : 40, "to" : 55},
        { "from" : 55}
        ]
      }
    }
  }
}'

# with keyed
curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "age_ranges" : {
      "range" : {
        "field" : "age",
        "keyed" : true,
        "ranges" : [
        { "to" : 30},
        { "from" : 30, "to" : 40},
        { "from" : 40, "to" : 55},
        { "from" : 55}
        ]
      }
    }
  }
}'

# with key specifiers
curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "age_ranges" : {
      "range" : {
        "field" : "age",
        "keyed" : true,
        "ranges" : [
        { "key" : "young", "to" : 30},
        { "key" : "quarter-aged",  "from" : 30, "to" : 40},
        { "key" : "middle-aged",  "from" : 40, "to" : 55},
        { "key" : "senior", "from" : 55}
        ]
      }
    }
  }
}'
