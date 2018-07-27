curl -XGET 'localhost:9200/customers/_search?q=wyoming&pretty'

# open in browser - localhost:9200/customers/_search?q=wyoming&pretty
# sorting
# localhost:9200/customers/_search?q=wyoming&sort=age:desc&pretty

# search specific Fields
curl -XGET 'localhost:9200/customers/_search?q=state:kentucky&sort=age:asc&pretty'

# search with size
curl -XGET 'localhost:9200/customers/_search?q=state:kentucky&from=10&size=2&retty'

# explanation with relevance score
curl -XGET 'localhost:9200/customers/_search?q=state:kentucky&explain&pretty'
