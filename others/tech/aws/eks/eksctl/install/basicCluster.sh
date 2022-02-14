# basic cluster creation (Managed nodes - Linux)    

eksctl create cluster --name=firstEKSCluster --nodes=2 \
--region ap-south-1 \
--instance-types t2.micro \
--nodegroup-name ng-firsteks \
--instance-prefix eksfirst \
--ssh-access \
--node-volume-type gp2 \
--node-volume-size=30 \
--zones=ap-south-1a,ap-south-1b
--dry-run

# check cluster details
eksctl get cluster firstEKSCluster

# view cluster nodes
kubectl get nodes -o wide
################################################################################
# 2022-02-14 12:52:16 [✖]  AWS::EKS::Nodegroup/ManagedNodeGroup: CREATE_FAILED – 
# "Resource handler returned message: \"Your requested instance type (t2.micro) 
# is not supported in your requested Availability Zone (ap-south-1c). 
# Please retry your request by not specifying an Availability Zone or choosing ap-south-1a, ap-south-1b. 
# (Service: Eks, Status Code: 400, Request ID: 0ebe162a-0cd9-4d59-a964-dc3a88b2a200, Extended Request ID: null)\" 
# (RequestToken: b029bda9-f18c-dd5b-7db0-2c4371453d3c, HandlerErrorCode: InvalidRequest)"
################################################################################
