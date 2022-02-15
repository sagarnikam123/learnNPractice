# How to AWS

################################################################################
#   SSH - EC2
################################################################################

chmod 0400 /home/quanta/Dropbox/secure/aws/ec2Keypairs/genRootAccess.pem
#ssh
ssh -i genRootAccess.pem ubuntu@ec2-13-127-205-225.ap-south-1.compute.amazonaws.com
################################################################################
#   Images - AMI
################################################################################

# getting images
aws ec2 describe-images --owners 309956199498 --query 'Images[*].[CreationDate,Name,ImageId]' --filters "Name=name,Values=RHEL-7.?*GA*" --region us-east-1 --output table | sort -r
aws ec2 describe-images \
    --owners 'aws-marketplace' \
    --filters 'Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce' \
    --query 'sort_by(Images, &CreationDate)[-1].[ImageId]' \
    --output 'text'

aws ec2 describe-images --owners 679593333241 --region us-east-1 --output table | sort -r
################################################################################
#   Availability Zone - Region
################################################################################

# specific availability zone
aws ec2 describe-availability-zones --region ap-south-1
# all availability zones
aws ec2 describe-availability-zones --all-availability-zones
################################################################################
# Amazon EC2 Instance Selector

curl -Lo ec2-instance-selector https://github.com/aws/amazon-ec2-instance-selector/releases/download/v2.0.3/ec2-instance-selector-`uname | tr '[:upper:]' '[:lower:]'`-amd64 && chmod +x ec2-instance-selector
mkdir -p $HOME/bin && cp ./ec2-instance-selector $HOME/bin/ec2-instance-selector

ec2-instance-selector --memory 2 --vcpus 1 --region ap-south-1 --availability-zones ap-south-1a -o table
ec2-instance-selector --memory 2 --vcpus 1 --region ap-south-1 --availability-zones ap-south-1b -o table
ec2-instance-selector --memory 2 --vcpus 1 --region ap-south-1 --availability-zones ap-south-1c -o table
################################################################################
