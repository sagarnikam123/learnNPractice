# install terraform

# https://developer.hashicorp.com/terraform/install
echo $PATH
chmod +x ~/Downloads/terraform_1.8.3_darwin_amd64/terraform # make executable
mv ~/Downloads/terraform_1.8.3_darwin_amd64/terraform /usr/local/bin/ # move to bin folder
terraform -help # verify
terraform -version
