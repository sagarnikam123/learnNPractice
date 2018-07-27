# match single term name
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "match" : {
      "name" : "webster"
    }
  }
}'

# match with phrase (either frank or norris in name section)
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "match" : {
      "name" : {
        "query" : "frank norris",
        "operator" : "or"
      }
    }
  }
}'

# with and operator
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "match" : {
      "name" : {
        "query" : "frank jacobson",
        "operator" : "and"
      }
    }
  }
}'

# with no operator (logical default params - OR)
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "match" : { "street" : "tompkins place"}
  }
}'

# using match_phrase
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "match_phrase" : { "street" : "tompkins place"}
  }
}'

curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "match_phrase" : { "state" : "puerto rico"}
  }
}'

# with match_phrase_prefix
curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "match_phrase_prefix" : { "name" : "ma"}
  }
}'

curl -XGET 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "query" : {
    "match_phrase_prefix" : { "street" : "clymer st"}
  }
}'
