# using jekyll-boostrap




#jekyll installation
# install sudo apt-get install ruby-rvm
sudo apt-get install ruby1.9.1 ruby1.9.1-dev \
	rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1  \
	build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev

sudo rvm pkg install openssl
sudo rvm install 1.9.1 --with-openssl-dir=$rvm_path/usr
sudo rvm install rubygems1.9.1 
sudo gem install rdoc

# setting default ruby version
rvm --default use 1.9.1
ruby -v

# installing gem
gem install jekyll


#installing & configuring github
sudo apt-get install git-gui
git config --global user.name sagarnikam123
git config --global user.email sagarnikam123@gmail.com


#installing jekyll-bostrap
git clone https://github.com/plusjade/jekyll-bootstrap.git sagarnikam123.github.com
cd git/sagarnikam123.github.com/
git remote set-url origin git@github.com:sagarnikam123/sagarnikam123.github.com.git
git push origin master


#jekyll themes
rake theme:install git="https://github.com/dhulihan/hooligan.git"
rake theme:install git="git://github.com/sodabrew/theme-dinky.git"