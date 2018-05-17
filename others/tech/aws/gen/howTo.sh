############################################################
#   SSH - EC2
############################################################
chmod 0400 /home/quanta/Dropbox/secure/aws/ec2Keypairs/genRootAccess.pem
#ssh
ssh -i genRootAccess.pem ubuntu@ec2-13-127-205-225.ap-south-1.compute.amazonaws.com

############################################################
#   Images - AMI
############################################################
# getting images
aws ec2 describe-images --owners 309956199498 --query 'Images[*].[CreationDate,Name,ImageId]' --filters "Name=name,Values=RHEL-7.?*GA*" --region us-east-1 --output table | sort -r
aws ec2 describe-images \
    --owners 'aws-marketplace' \
    --filters 'Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce' \
    --query 'sort_by(Images, &CreationDate)[-1].[ImageId]' \
    --output 'text'

aws ec2 describe-images --owners 679593333241 --region us-east-1 --output table | sort -r
