# Deploy Vault

# unset the VAULT_TOKEN environment variable.
unset VAULT_TOKEN

# Configuring Vault

# config.hcl
storage "raft" {
    path = "./vault/data"
    no_id = "node1"
}

listener "tcp" {
    address = "127.0.0.1:8200"
    tls_disable = "true"
}

# disable_mlock = true # to disable mlock 
api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"
ui = true

# Starting the server

# export VAULT_ADDR='http://127.0.0.1:8200' for without TLS

# ./vault/data directory that raft storage backend uses must exist
mkdir -p ./vault/data

# start server
vault server -config=config.hcl

# Initializing the Vault

# During initialization, the encryption keys are generated, unseal keys are created, 
# and the initial root token is created.
# save keys some where - unseal keys and initial root token

export VAULT_ADDR='http://127.0.0.1:8200'
# Initialize
vault operator init

# Seal/Unseal
# From the configuration, Vault can access the physical storage, but it can't read any of it 
# because it doesn't know how to decrypt it. 
# The process of teaching Vault how to decrypt the data is known as unsealing the Vault.
# threshold number of unseal keys.

# unsealing the Vault
vault operator unseal

# authenticate as the initial root token
vault login s.NMfkMOgpb5R4C3X6GX3sf0yo

# reseal the Vault with
vault operator seal

# Clean up
# stop the server Or, kill the Vault process from a command
pgrep -f vault | xargs kill
# Delete the /vault/data directory which stores the encrypted Vault data.
rm -rf ./vault/data