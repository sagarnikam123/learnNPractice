# 4_Configuring Git

# install git on workstation
sudo yum install git

# initialize git repo inside chef-repo
cd chef-repo
git init
# change user group permission
sudo chown user.user -R .

# add everthing inside folder to staging area
git add .

# add global git configs
git config --global user.email "sagarnikam123@gmail.com"
git config --global user.name "sagarnikam123"

# commit
git commit -am "Adding chef-repo to git"

# create public repo on github - chef-fluency-badge
# & execute following commands
git remote add origin https://github.com/sagarnikam123/chef-fluency-badge.git
git push -u origin master

# go to github repo, refresh & check for code

# create new cookbook using knife
knife cookbook create learn
cd cookbooks/
ls

# add to git & push
git add .
git commit -am "Adding learn cookbook"
git push -u origin master
