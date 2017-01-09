# 2_Configure ChefDK

# download chef-starter kit by login to Chef-server - >Administration - > select organization - > starter kit
unzip chef-starter.zip -d chef-starter
cd chef-starter
cd chef-repo
ls
git init
ls -la

# viewing credentails
cd .chef
ls

cat knife.rb
# fetching ssl from server
sudo knife ssl fetch
# checking host-server connection
knife ssl check
# checking chef verify(for any break/ dependency)
chef verify
