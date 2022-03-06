# Introduction to Amazon Simple Storage Service (S3)

################################################################################
# Task 1: Create a bucket
    # bucket name - reportbucket-
################################################################################
# Task 2: Upload an object to the bucket
################################################################################
# Task 3: Make an object public
################################################################################
# Task 4: Test connectivity from the EC2 instance

# on Bastion host
cd ~
pwd # output should be (/home/ssm-user)

# list all of S3 buckets
aws s3 ls

# list all object in reportbucket
aws s3 ls s3://reportbucket-

# change directory into reports & list contents of it
cd reports
ls

# copy a file to s3 bucket (error upload failed)
aws s3 cp report-test1.txt s3://reportbucket-
################################################################################
# Task 5: Create a bucket policy

# EC2InstanceProfileRole
# on Bastion (/home/ssm-user/reports)
pwd

# list all object in reportbucket
aws s3 ls s3://reportbucket-

# list contents of report directory-local
ls

# try previous copy command
aws s3 cp report-test1.txt s3://reportbucket-

# check uploaded file successfully
aws s3 ls s3://report-

# retrieve a file from S3 to EC2
aws s3 cp s3://report- /sample-file.txt sample-file.txt

# check locally in reports directory
ls

################################################################################
# Task 6: Explore versioning

################################################################################
