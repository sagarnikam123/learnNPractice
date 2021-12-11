# Your First Secret

# in dev mode, Key/Value v2 secrets engine is enabled at secret/ path
# kv secrets engine- (a generic key-value store used to store arbitrary secrets within the configured physical storage)

# Writing a Secret

# verify that no secrets exists at secret/hello
vault kv get secret/hello

# write secret
vault kv put secret/hello foo=world

# write multiple pieces of data
# Notice that the version is now 2
vault kv put secret/hello foo=world excited=yes

# Getting a Secret
vault kv get secret/hello

# print only the value of a given field,
vault kv get -field=excited secret/hello

# optional JSON output, use jq tool to extract the value
vault kv get -format=json secret/hello | jq -r .data.data.excited

# Deleting a Secret
vault kv delete secret/hello