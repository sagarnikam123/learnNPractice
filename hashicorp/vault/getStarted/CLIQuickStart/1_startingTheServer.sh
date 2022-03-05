# Starting the Server

# start standalone server
vault server -dev

# configure vault client to talk to dev server
 export VAULT_ADDR='http://127.0.0.1:8200'

# save Unseal key somewhere
echo 'AqfnMwbhsjgyDnIythjQBBvMPwJHXWkBISUntHg4mEE=' => unseal.key

# set VAULT_TOKEN to generated Root Token (useful for Vault login)
export VAULT_TOKEN='s.EFgr1NuDQROVSKeide6KZ5nd'

# verify server is running/status
vault status
