# Installing aws-iam-authenticator

# Download the Amazon EKS vended aws-iam-authenticator binary from Amazon S3
# amd64
curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator
# arm64
curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/arm64/aws-iam-authenticator

# Apply execute permissions to the binary
chmod +x ./aws-iam-authenticator

# Copy the binary to a folder in your $PATH.
# We recommend creating a $HOME/bin/aws-iam-authenticator and ensuring that $HOME/bin comes first in your $PATH
mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin

# Add $HOME/bin to your PATH env_feature variable
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

# Test that the aws-iam-authenticator binary works
aws-iam-authenticator help
