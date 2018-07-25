# get & check document
curl -XGET 'localhost:9200/products/mobiles/3?&pretty'

# updating whole document
curl -XPUT 'localhost:9200/products/mobiles/4?&pretty' -H 'content-type:application/json' -d '{
  "name" : "Xiaomi Note",
  "camera" : "12MP",
  "storage" : "256GB",
  "display" : "5.5inch",
  "battery" : "1,800mAh",
  "reviews" : ["Really love Xiaomi products", "Too large to use easily"]
}'

# get & check document
curl -XGET 'localhost:9200/products/mobiles/2?&pretty'

# update pre-existing field & add new field
curl -XPOST 'localhost:9200/products/mobiles/2/_update?&pretty' -H 'content-type:application/json' -d '{
  "doc" : {
    "color" : "black",
    "camera" : "8MP"
  }
}'

# update pre-existing field & add new field
curl -XPOST 'localhost:9200/products/mobiles/2/_update?&pretty' -H 'content-type:application/json' -d '{
  "doc" : {
    "reviews" : ["Best Android phone", "I love it!", "Samsung is my favorite"],
    "texture" : "smooth"
  }
}'
# check
curl -XGET 'localhost:9200/products/mobiles/2?&pretty'

# updating field with script
curl -XGET 'localhost:9200/footwares/shoes/1?&pretty'

curl -XPOST 'localhost:9200/footwares/shoes/1/_update?pretty' -H 'content-type:application/json' -d '{
  "script" : "ctx._source.size +=2"
}'

curl -XGET 'localhost:9200/footwares/shoes/1?&pretty'

# decrease size of shoe
curl -XGET 'localhost:9200/footwares/shoes/2?&pretty'

curl -XPOST 'localhost:9200/footwares/shoes/2/_update?pretty' -H 'content-type:application/json' -d '{
  "script" : "ctx._source.size -=1"
}'

curl -XGET 'localhost:9200/footwares/shoes/2?&pretty'
