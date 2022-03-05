# Use the chmod command to make sure your private key file isn't publicly viewable.
chmod 400 podcast-keys.pem

#connecting
ssh -i podcast-keys.pem ec2-user@ec2-52-66-103-66.ap-south-1.compute.amazonaws.com

# chekcing for ip addresses
ip a

ifconfig
