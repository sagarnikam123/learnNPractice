curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "age_count" : {
      "cardinality" : {
        "field" : "age"
      }
    }
  }
}'

# Fielddata is disabled on text fields by default. Set fielddata=true on [gender]
# in order to load fielddata in memory by uninverting the inverted index.
# Note that this can however use significant memory. Alternatively use a keyword field instead.",

curl -XPOST 'localhost:9200/customers/_search?&pretty' -H 'content-type:application/json' -d '{
  "size" : 0,
  "aggs" : {
    "gender_count" : {
      "cardinality" : {
        "field" : "gender"
      }
    }
  }
}'

# _mapping API to enable field data
# cluster_block_exception
# blocked by: [FORBIDDEN/12/index read-only / allow delete (api)]
curl -XPUT 'localhost:9200/customers/_mapping/personal?pretty' -H 'content-type:application/json' -d '{
  "properties" : {
    "gender" : {
      "type" : "text",
      "fielddata" : true
    }
  }
}'

# check if, read_only_allow_delete is true
curl -XGET 'localhost:9200/customers/_settings?pretty'
# change settings
curl -XPUT 'localhost:9200/customers/_settings?pretty'  -H 'content-type:application/json' -d '{
  "index.blocks.read_only_allow_delete": null
}'
