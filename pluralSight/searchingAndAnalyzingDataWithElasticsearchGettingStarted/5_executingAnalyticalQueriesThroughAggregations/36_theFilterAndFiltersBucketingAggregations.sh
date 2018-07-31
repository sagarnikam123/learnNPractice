# Avg age of customers in Texas state
curl -XPOST 'localhost:9200/customers/_search?size=0&pretty' -H 'content-type:application/json' -d '{
  "aggs" : {
    "state" : {
      "filter" : { "term" : {"state" : "texas" }},
      "aggs" : {
        "avg_age" : { "avg" : { "field" : "age" } }
      }
    }
  }
}'

# with multiple filters
curl -XPOST 'localhost:9200/customers/_search?size=0&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "states" : {
      "filters" : {
        "filters" : {
          "washington" : { "match" : {"state" : "washington"}},
          "north carolina" : { "match" : {"state" : "north carolina"}},
          "south dakota" : { "match" : {"state" : "south dakota"}}
        }
      }
    }
  }
}'
