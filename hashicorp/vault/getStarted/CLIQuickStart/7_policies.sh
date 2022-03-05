# Policies

# authorization

# Policy Format
# List all enabled policies
vault policy list

# authored in HCL, but are JSON compatible
# built-in policies that cannot be removed (e.g. root & default)
# default policy-a common set of permissions and is included on all tokens by default.
vault policy read default

# Write a Policy
vault policy write -h

# Create the policy named my-policy with the contents from stdin
vault policy write my-policy - << EOF
# Dev serves have version 2 of KV secrets engine mounted by default, so will
# need these paths to grant permissions:
path "secret/data/*" {
    capabilities = ["create", "update"]
}

path "secret/data/foo" {
    capabilities = ["read"]
}
EOF

# List all the policies & read created above
vault policy list
vault policy read my-policy

# Test the Policy
# Policies are attached to tokens that Vault generates directly or through its various auth methods
# Create a token, add the my-policy policy, and
# set the token ID as the value of the VAULT_TOKEN environment variable for later use
export VAULT_TOKEN="$(vault token create -field token -policy=my-policy)"

# validate the token ID with correct policies
# The policy enables the create and update capabilities for every path within the secret/ engine except one
vault token lookup | grep policies


# Write a secret to the path secret/data/creds
vault kv put secret/creds password="my-long-password"

# Attempt to write to the secret/data/foo path
# * permission denied
vault kv put secret/foo robot=beepboop

# Associate Policies to Auth Methods
export VAULT_TOKEN=s.gHirpQmo4AhhJ65RGMXAqPD4
# First, check to verify that approle auth method has not been enabled at the path approle/
vault auth list | grep 'approle/'
# enable approle/
vault auth enable approle

# Enable an AppRole role named "my-role", to configure some basic token options
# and to attach the previously defined "my-policy" policy to all tokens
# that it creates when applications authenticate with the role.
vault write auth/approle/role/my-role \
    secret_id_ttl=10m \
    token_num_uses=10 \
    token_ttl=20m \
    token_max_ttl=30m \
    secret_id_num_uses=40 \
    token_policies=my-policy

# To authenticate with AppRole, first fetch the role ID, and capture its value in a ROLE_ID environment variable.
export ROLE_ID="$(vault read -field=role_id auth/approle/role/my-role/role-id)"

# get a secret ID (which is similar to a password for applications to use for AppRole authentication),
# and capture its value in the SECRET_ID environment variable.
export SECRET_ID="$(vault write -f -field=secret_id auth/approle/role/my-role/secret-id)"

# authenticate to AppRole with vault write by specifying the role path and passing the role ID and
# secret ID values with the respective options.
# Note that "my-policy" policy is contained in the policies and token_policies fields
vault write auth/approle/login role_id="$ROLE_ID" secret_id="$SECRET_ID"
