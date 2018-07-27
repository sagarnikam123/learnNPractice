# term should be present exactly in index
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "term" : { "name" : "gates"}
  }
}'

curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "term" : { "street" : "chestnut"}
  }
}'

# only doc id (no source content)
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "_source" : false,
  "query" : {
      "term" : { "street" : "chestnut"}
  }
}'

# source with regex params
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "_source" : "st*",
  "query" : {
      "term" : { "state" : "washington"}
  }
}'

curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "_source" : ["st*", "*n*" ],
  "query" : {
      "term" : { "state" : "washington"}
  }
}'

# with include & exclude
curl -XGET 'localhost:9200/customers/_search?pretty' -H 'content-type:application/json' -d '{
  "_source" : {
    "includes" : ["st*", "*n*" ],
    "excludes" : ["*der"]
  },
  "query" : {
      "term" : { "state" : "washington"}
  }
}'
