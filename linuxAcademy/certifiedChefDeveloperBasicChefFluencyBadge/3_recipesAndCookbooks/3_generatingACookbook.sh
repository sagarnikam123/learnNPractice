# 3_Generating a Cookbook

# generating cook book
cd code
chef generate cookbook workstation
ls

cp ../learn.rb recipes/
cd recipes/
ls

vim default.rb # add code for 'tree' pkg installation

cd ..
chef-client --local-mode recipes/default.rb

# chef file structure
tree
