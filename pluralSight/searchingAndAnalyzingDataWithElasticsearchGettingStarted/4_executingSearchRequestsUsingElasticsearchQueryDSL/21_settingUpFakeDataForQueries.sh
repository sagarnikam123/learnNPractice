# Go to => https://www.json-generator.com/
# add below template
[
'{{repeat(1000, 1000)}}',
  {
    name : '{{firstName()}} {{surname()}}',
    age : '{{integer(18,75)}}',
    gender : '{{gender()}}',
    email : '{{email()}}',
    phone : '+1 {{phone()}}',
    street : '{{integer(100, 999)}}  {{street()}}',
    city : '{{city()}}',
    state : '{{state()}}, {{integer(100, 10000)}}'
  }
]

# Generate data
# remove outer Array notation []
# {"name" => {"index" : {}} \n {"name"
# },{ => }\n{

# check indices
curl -XGET 'localhost:9200/_cat/indices?v&pretty'

# delete customer index
curl -XDELETE 'localhost:9200/customers?pretty'

# add bulk index with JSON file
curl -XPOST -H 'content-type:application/x-ndjson' 'localhost:9200/customers/personal/_bulk?pretty&refresh' \
--data-binary @'customers_full.json'
