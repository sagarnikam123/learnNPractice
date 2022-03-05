# Dynamic Secrets

# Enable the AWS secrets engine
vault secrets enable -path=aws -description='AWS Credentials' aws

# Configure the AWS secrets engine
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

# Configure the AWS secrets engine
vault write aws/config/root \
    access_key=$AWS_ACCESS_KEY_ID \
    secret_key=$AWS_SECRET_ACCESS_KEY \
    region=ap-south-1

# check configs
vault read aws/config/root

# Create a role (configure a role)

# IAM policy that enables all actions on EC2, but not IAM or other AWS services
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1426528957000",
      "Effect": "Allow",
      "Action": ["ec2:*"],
      "Resource": ["*"]
    }
  ]
}

# map this policy document to a named role
vault write aws/roles/my-role \
    credential_type=iam_user
    policy_document=-<<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1426528957000",
      "Effect": "Allow",
      "Action": ["ec2:*"],
      "Resource": ["*"]
    }
  ]
}
EOF

# Generate the secret
# Each time you read from aws/creds/:name,
# Vault will connect to AWS and generate a new IAM user and key pair
vault read aws/creds/my-role
# Copy the full path of this lease_id value
# This value is used for renewal, revocation, and inspection
# lease_id           aws/creds/my-role/douepyjhapdkOS8ylXhbgjSh

# view lease
vault lease lookup aws/creds/my-role/douepyjhapdkOS8ylXhbgjSh

# Revoke the secret
vault lease revoke aws/creds/my-role/douepyjhapdkOS8ylXhbgjSh
