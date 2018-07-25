# retrieving multiple documents using _mget
curl -XGET 'localhost:9200/_mget?pretty' -H 'content-type:application/json' -d'{
  "docs" : [
  {
    "_index" : "computers",
    "_type" : "laptops",
    "_id" : "1"
  },
  {
    "_index" : "computers",
    "_type" : "laptops",
    "_id" : "2"
  }
  ]
}'

# specify index in query
curl -XGET 'localhost:9200/computers/_mget?pretty' -H 'content-type:application/json' -d'{
  "docs" : [
  {
    "_type" : "laptops",
    "_id" : "1"
  },
  {
    "_type" : "laptops",
    "_id" : "2"
  }
  ]
}'

# _bulk API (multiple operations)
curl -XPOST 'localhost:9200/_bulk?pretty' -H 'content-type:application/json' -d'
{ "index" : {"_index" : "footwares", "_type" : "shoes", "_id" : "3"} }
{"name" : "Puma", "size" : "9", "color" : "black"}
{ "index" : {"_index" : "footwares", "_type" : "shoes", "_id" : "4"} }
{"name" : "New Balance", "size" : "8", "color" : "black"}
'

# specifying index in url
curl -XPOST 'localhost:9200/footwares/_bulk?pretty' -H 'content-type:application/json' -d'
{ "index" : {"_type" : "shoes", "_id" : "3"} }
{"name" : "Puma", "size" : "9", "color" : "black"}
{ "index" : {"_type" : "shoes", "_id" : "4"} }
{"name" : "New Balance", "size" : "8", "color" : "black"}
'
# document type in url
curl -XPOST 'localhost:9200/footwares/shoes/_bulk?pretty' -H 'content-type:application/json' -d'
{ "index" : {"_id" : "3"} }
{"name" : "Puma", "size" : "9", "color" : "black"}
{ "index" : {"_id" : "4"} }
{"name" : "New Balance", "size" : "8", "color" : "black"}
'
# auto-generate id fields
curl -XPOST 'localhost:9200/footwares/shoes/_bulk?pretty' -H 'content-type:application/json' -d'
{ "index" : {} }
{"name" : "Puma", "size" : "9", "color" : "black"}
{ "index" : {} }
{"name" : "New Balance", "size" : "8", "color" : "black"}
'
# with multiple operations(create, update, delete)
curl -XPOST 'localhost:9200/footwares/shoes/_bulk?pretty' -H 'content-type:application/json' -d'
{ "index" : {"_id" : "3"} }
{ "name" : "Puma", "size" : "9", "color" : "black"}
{ "index" : {"_id" : "4"} }
{ "name" : "New Balance", "size" : "8", "color" : "black"}
{ "delete" : { "_id" : "2"} }
{ "create" : {"_id" : 5} }
{ "name" : "Nike Power", "size" : "12", "color" : "black" }
{ "update" : { "_id" : "1" } }
{ "doc" : { "color" : "orange" }}
'
