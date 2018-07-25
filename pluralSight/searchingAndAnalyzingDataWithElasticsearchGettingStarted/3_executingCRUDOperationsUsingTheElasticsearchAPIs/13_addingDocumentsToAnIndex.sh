# adding document

# Mobiles
curl -XPUT 'localhost:9200/products/mobiles/1?&pretty' --header "content-type:application/json" -d '
{
  "name" : "iPhone 7",
  "camera" : "12 MP",
  "storage" : "256GB",
  "display" : "4.7inch",
  "battery" : "1,960mAh",
  "reviews" : ["Incredible happy after having used it for one week", "Best iPhone so far", "Very expensive, stick to Android"]
}'

curl -XPUT 'localhost:9200/products/mobiles/2?&pretty' --header "content-type:application/json" -d '{
  "name" : "Samsung Galaxy",
  "camera" : "8 MP",
  "storage" : "128GB",
  "display" : "5.2inch",
  "battery" : "1,500mAh",
  "reviews" : ["Best Android Phone", "I love it!"]
}'

curl -XPUT 'localhost:9200/products/mobiles/3?&pretty' --header "content-type:application/json" -d '{
  "name" : "Xiaomi Note",
  "camera" : "10MP",
  "storage" : "128GB",
  "display" : "5.5inch",
  "battery" : "1,500mAh",
  "reviews" : ["Really love Xiaomi products", "Too large to use easily"]
}'

# Laptops
curl -XPUT 'localhost:9200/computers/laptops/1?pretty'  --header "content-type:application/json" -d'
{
  "name": "Macbook Pro",
  "storage": "500GB",
  "RAM": "8GB",
  "display": "13inch",
  "os": "El Capitan",
  "reviews": ["A little bulky but a great Mac laptop", "The larger storage capacity is great"]
}'

curl -XPUT 'localhost:9200/computers/laptops/2?pretty'  -H "content-type:application/json" -d'
{
  "name": "Dell",
  "storage": "1TB",
  "RAM": "8GB",
  "display": "14inch",
  "os": "Windows 10",
  "reviews": ["Great work laptop", "Not too heavy"]
}'

# Shoes
curl -XPUT 'localhost:9200/footwares/shoes/1?&pretty'  --header "content-type:application/json" -d'
{
  "name": "Adidas",
  "size" : 9,
  "color" : "black"
}'

curl -XPUT 'localhost:9200/footwares/shoes/2?&pretty' -H "content-type:application/json" -d'{
  "name" : "Nike",
  "size" : 8,
  "color" : "white"
}'
