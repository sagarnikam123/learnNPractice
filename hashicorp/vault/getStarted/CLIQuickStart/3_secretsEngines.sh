# Secrets Engines

# try

#Error making API request.
#URL: GET http://127.0.0.1:8200/v1/sys/internal/ui/mounts/foo/bar
#Code: 403. Errors:
#* preflight capability check returned 403, please ensure client's policies grant access to path "foo/bar/"
vault kv put foo/bar a=b

# Enable a Secrets Engine
vault secrets enable -path=kv kv
vault secrets enable -path=puppy kv

# * path is already in use at kv/
vault secrets enable kv

# view created secrets
vault secrets list

# create secrets & get
vault kv put kv/hello target=world
vault kv get kv/hello

# create other secret & get
vault kv put kv/my-secret value="s3c(eT"
vault kv get kv/my-secret

# delete secrets at kv/my-secret
vault kv delete kv/my-secret

# List existing keys at the kv path
vault kv list kv/

# Disable a Secrets Engine
# When a secrets engine is disabled,
# all secrets are revoked and the corresponding Vault data and configuration is removed
vault secrets disable kv
vault secrets disable humpy
vault secrets list
