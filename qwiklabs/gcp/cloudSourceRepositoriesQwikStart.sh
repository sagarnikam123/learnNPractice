# Cloud Source Repositories: Qwik Start

###############################################################################
# Create a new repository

gcloud source repos create REPO_DEMO
###############################################################################
# Clone the new repository into your Cloud Shell session

gcloud source repos clone REPO_DEMO
###############################################################################
# Push to the Cloud Source Repository

# create a file myfile.txt & commit
cd REPO_DEMO
echo 'Hello World!' > myfile.txt
git config --global user.email 'sagarnikam123@gmail.com'
git config --global user.name 'Sagar Nikam'
git add myfile.txt
git commit -m "First file using Cloud Source Repositories" myfile.txt
git push -u origin master
###############################################################################
# Browse files in the Google Cloud Source repository
###############################################################################
# View a file in the Google Cloud repository
###############################################################################
