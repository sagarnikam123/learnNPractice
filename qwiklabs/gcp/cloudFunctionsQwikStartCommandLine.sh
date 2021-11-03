# Cloud Functions: Qwik Start - Command Line

###############################################################################
# Create a function

#To create a cloud function:
# 1. In the Cloud Shell command line, create a directory for the function code & 
# Move to the gcf_hello_world directory
mkdir gcf_hello_world
cd gcf_hello_world

# 2. nano index.js

# Create a cloud storage bucket
# gsutil mb -p [PROJECT_ID] gs://[BUCKET_NAME]
gsutil mb -p qwiklabs-gcp-04-3aa5b8b21541 gs://gcp123qwiklabs321
###############################################################################
# Deploy your function

# 1. Deploy the function to a pub/sub topic named hello_world, 
# replacing [BUCKET_NAME] with the name of your bucket:
gcloud functions deploy helloWorld \
  --stage-bucket [BUCKET_NAME] \
  --trigger-topic hello_world \
  --runtime nodejs8

gcloud functions deploy helloWorld \
  --stage-bucket gcp123qwiklabs321 \
  --trigger-topic hello_world \
  --runtime nodejs8
  
 # 2. Verify the status of the function
gcloud functions describe helloWorld 
###############################################################################
# Test the function

DATA=$(printf 'Hello World!'|base64) && gcloud functions call helloWorld --data '{"data":"'$DATA'"}'
###############################################################################
# View logs

gcloud functions logs read helloWorld
###############################################################################