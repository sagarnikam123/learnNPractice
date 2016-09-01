################################################################################
#   installing CLI & configure
################################################################################

# https://aws.amazon.com/tools/

# docs on installing cli tools on Linux
# http://docs.aws.amazon.com/cli/latest/userguide/installing.html

# installing CLI (for python 2.7 only)
sudo pip2 install awscli
sudo pip3 install awscli

# To upgrade an existing AWS CLI installation
sudo pip2 install --upgrade awscli

# Test the AWS CLI Installation
aws help

# Uninstalling the AWS CLI
sudo pip uninstall awscli

# Configuring the AWS Command Line Interface
# quick Configuration
aws configure

# configure with profile
aws configure --profile pluralsight

# view configuration and credential Files
ls ~/.aws
cat ~/.aws/credentials
cat ~/.aws/config

# exporting variables
export AWS_DEFAULT_PROFILE=pluralsight
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2
export AWS_CONFIG_FILE=~/.aws/config

# test for ec2
aws ec2 describe-instances --output table --region us-west-1
aws ec2 describe-instances --output table --profile pluralsight --region us-west-1

# other command line options
--aws_access_key_id
--aws_secret_access_key
--aws_session_token
--endpoint-url
--profile
--region
--output (json, text, or table)
