# Cloud Storage: Qwik Start - CLI/SDK

################################################################################

# Setup and Requirements
gcloud auth login
gcloud config set project qwiklabs-gcp-02-b40e44fef974

# Create a bucket
# qwiklabs-gcp-02-b40e44fef974

# Upload an object into your bucket
curl https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Ada_Lovelace_portrait.jpg/800px-Ada_Lovelace_portrait.jpg --output ada.jpg
# upload image
gsutil cp ada.jpg gs://qwiklabs-gcp-02-b40e44fef974
# remove image
rm ada.jpg

# Download an object from your bucket
gsutil cp -r gs://qwiklabs-gcp-02-b40e44fef974/ada.jpg .

# Copy an object to a folder in the bucket
# create a folder called image-folder and copy the image (ada.jpg) into it
gsutil cp gs://qwiklabs-gcp-02-b40e44fef974/ada.jpg gs://qwiklabs-gcp-02-b40e44fef974/image-folder/

# List contents of a bucket or folder
gsutil ls gs://qwiklabs-gcp-02-b40e44fef974

# List details for an object
gsutil ls -l gs://qwiklabs-gcp-02-b40e44fef974/ada.jpg

# Make your object publicly accessible
gsutil acl ch -u AllUsers:R gs://qwiklabs-gcp-02-b40e44fef974/ada.jpg
# https://storage.googleapis.com/qwiklabs-gcp-02-b40e44fef974/ada.jpg

# Remove public access
gsutil acl ch -d AllUsers gs://qwiklabs-gcp-02-b40e44fef974/ada.jpg

# Delete objects
gsutil rm gs://qwiklabs-gcp-02-b40e44fef974/ada.jpg
################################################################################