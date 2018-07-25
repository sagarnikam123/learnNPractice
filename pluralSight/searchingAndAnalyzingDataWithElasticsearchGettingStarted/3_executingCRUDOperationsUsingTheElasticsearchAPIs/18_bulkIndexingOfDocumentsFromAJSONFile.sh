# "index" field is requied for every document

curl -H "content-type:application/x-ndjson" -XPOST 'localhost:9200/customers/personal/_bulk?&pretty&refresh' \
--data-binary @'/home/quanta/git/learnNPractice/pluralSight/searchingAndAnalyzingDataWithElasticsearchGettingStarted/3_executingCRUDOperationsUsingTheElasticsearchAPIs/customer.json'

# curl -XDELETE 'localhost:9200/customers?&pretty'
curl -XGET 'localhost:9200/customers?&pretty'
