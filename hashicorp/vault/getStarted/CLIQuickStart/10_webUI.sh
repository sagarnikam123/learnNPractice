# Web UI

# Server Configuration
# in development mode the UI is automatically enabled & ready to use

# Start Web UI
# config.hcl
ui = true
disable_mlock = true

storage "raft" {
    path = "./vault/data"
    node_id = "node1"
}

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_disable = "true"
}

api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"

# Create the vault/data directory for the storage backend
rm -rf ./vault/data
mkdir -p ./vault/data

# Start a Vault server with server configuration file named config.hcl
vault server -config=config.hcl

# Launch a web browser, and enter http://127.0.0.1:8200/ui
# Create a new Raft cluster
# download unseal keys
# Continue to Unseal
# Copy one of the keys (not keys_base64) and enter it in the Master Key Portion field. Click Unseal to proceed.
# Copy the root_token and enter its value in the Token field. Click Sign in.
