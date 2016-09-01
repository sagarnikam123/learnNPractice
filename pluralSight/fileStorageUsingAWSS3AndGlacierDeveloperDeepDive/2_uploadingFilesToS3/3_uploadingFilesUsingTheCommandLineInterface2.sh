################################################################################
#   Using High-Level s3 Commands with the AWS Command Line Interface
################################################################################

# Creating Buckets
aws s3 mb s3://pluralbucket

# Removing Buckets
# By default, the bucket must be empty for the operation to succeed
aws s3 rb  s3://awsbigdataxdemo

# to remove a non-empty bucket,
aws s3 rb s3://awsbigdataxdemologs --force

# Listing Buckets
aws s3 ls

# lists all objects and folders (prefixes) in a bucket.
aws s3 ls s3://plural-original/
aws s3 ls s3://plural-original/images/

# Managing Objects (high-level aws s3 commands)
#  cp, ls, mv, rm works similarly to the Unix with --grants optioin
# --grants to grant permissions on object to specified users/groups.
# --grants Permission=Grantee_Type=Grantee_ID [Permission=Grantee_Type=Grantee_ID ...]
# Permission - read, readacl, writeacl, or full.
# Grantee_Type - uri, emailaddress, or id.
# Grantee_ID - uri, emailaddress, or id.
# --storage-class - REDUCED_REDUNDANCY or STANDARD_IA

# copy local to s3 bucket
aws s3 cp /home/quanta/Pictures/Wallpapers/google/GoogleBlackLogo.png s3://pluralbucket/
aws s3 cp /home/quanta/Pictures/Wallpapers/google/GoogleBlackLogo.png s3://pluralbucket/blackGoogleLogo.png --grants read='uri="http://acs.amazonaws.com/groups/global/AllUsers"'

# move file within s3
aws s3 mv s3://pluralbucket/GoogleBlackLogo.png s3://pluralbucket/wallpaper/ --storage-class REDUCED_REDUNDANCY
# remove file from s3
aws s3 rm s3://pluralbucket/wallpaper/GoogleBlackLogo.png

# sync
# aws s3 sync <source> <target> [--options]
# Local file system to Amazon S3
# Amazon S3 to local file system
# Amazon S3 to Amazon S3
# --exclude & --include

# Attempt sync without --delete option - nothing happens
aws s3 sync . s3://pluralbucket/images/
