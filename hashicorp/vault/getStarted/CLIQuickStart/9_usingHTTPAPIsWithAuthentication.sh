# Using the HTTP APIs with Authentication

# Accessing Secrets via the REST APIs
#  only for example purposes, TLS is disabled here & uses a file-based backend

# disabledTLSConfig.hcl
storage "file" {
    path = "vault-data"
}

listener "tcp" {
    tls_disabled = "true"
}

# start vault instance using newly created configuration
vault server -config=./disabledTLSConfig.hcl

# example uses jq (https://stedolan.github.io/jq/)to process the JSON output for readability.
# save keys & tokens
curl \
    --request POST \
    --data '{"secret_shares": 1, "secret_threshold": 1}' \
    http://127.0.0.1:8200/v1/sys/init | jq

export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN='s.l0XTkfXAuzN2BMvehTzQnkM5'

# unseal the Vault via the HTTP API using unseal key
curl \
    --request POST \
    --data '{"key" : "kNEvaXE8DmTTswJGeGR4fM0hocKVvCb7peowZR3gSGI="}' \
    http://127.0.0.1:8200/v1/sys/unseal | jq

# invoke the Vault API to validate the initialization status
curl http://127.0.0.1:8200/v1/sys/init

#  enable AppRole authentication
# vault auth enable approle
# To see the cURL equivalent of the CLI command to enable AppRole auth method,
vault auth enable -output-curl-string approle

# check auths available
vault auth list

# Enable the AppRole auth method by invoking the Vault API
curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data '{"type" : "approle"}' \
    http://127.0.0.1:8200/v1/sys/auth/approle

# check policies available
vault policy list

# create an AppRole with desired set of ACL policies
curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request PUT \
    --data '{"policy":"# Dev servers have version 2 of KV secrets engine mounted by default, so will\n# need these paths to grant permissions:\npath \"secret/data/*\" {\n  capabilities = [\"create\", \"update\"]\n}\n\npath \"secret/data/foo\" {\n  capabilities = [\"read\"]\n}\n"}' \
    http://127.0.0.1:8200/v1/sys/policies/acl/my-policy

# my-policy expects secret/data path to exist, enable KV v2 secrets engine at secret/ using API.
curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data '{ "type" : "kv-v2" }' \
    http://127.0.0.1:8200/v1/sys/mounts/secret

# associate my-role (from AppRole) with my-policy
curl \
--header "X-Vault-Token: $VAULT_TOKEN" \
--request POST \
--data '{"policies" : ["my-policy"]}' \
http://127.0.0.1:8200/v1/auth/approle/role/my-role

# fetch the RoleID of the role named my-role, copy role_id
curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    http://127.0.0.1:8200/v1/auth/approle/role/my-role/role-id | jq -r ".data"

# creates a new SecretID under the my-role, copy secret_id
curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    http://127.0.0.1:8200/v1/auth/approle/role/my-role/secret-id | jq -r ".data"

# with role_id & secret_id, login endpoint to fetch a new Vault token
# returned client_token
curl --request POST \
       --data '{"role_id": "8a927224-9b44-aff4-7a93-f73dc9e5bef2", "secret_id": "71f6f353-c048-ae1f-ab23-38f38775e454"}' \
       http://127.0.0.1:8200/v1/auth/approle/login | jq -r ".auth"

# newly acquired token can be exported as the VAULT_TOKEN env_feature variable value and used to authenticate subsequent Vault requests.
export VAULT_TOKEN="s.UnG6RFPnxDa37zOCSvkiyy1m"

# Create a version 1 of secret named creds with a key password and its value set to my-long-password
curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data '{ "data": {"password": "my-long-password"} }' \
    http://127.0.0.1:8200/v1/secret/data/creds | jq -r ".data"

#  can stop the server and unset the VAULT_TOKEN env_feature variable
unset VAULT_TOKEN
