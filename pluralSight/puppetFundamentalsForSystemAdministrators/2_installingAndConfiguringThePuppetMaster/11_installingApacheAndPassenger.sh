# 11_Installing Apache and Passenger

# relaxing file permission
sudo chmod o+x "/home/vagrant"

# installing apache & related libraries
# sudo yum remove ruby ruby-devel
yum groupinstall -y development
# or
sudo yum groupinstall -y 'development tools'

sudo yum -y install openssl-devel
sudo yum install -y libffi libffi-devel

#
curl -L get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm reload
rvm install 2.4.0
rvm list rubies
rvm use 2.4.0

# or other method
sudo wget https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.0.tar.gz
sudo tar xvfvz ruby-2.4.0.tar.gz
cd  ruby-2.4.0
sudo ./configure
sudo make
sudo make install

#  update Rubygems and Bundler.
gem update --system
gem install bundler

sudo yum -y install httpd httpd-devel mod_ssl gcc gcc-c++ libcurl-devel openssl-devel

# installing passenger
gem install rack passenger

# install passenger-apache2 module
# edit apache config file by adding below lines
sudo nano /etc/httpd/conf/httpd.conf

# lines
LoadModule passenger_module /home/vagrant/.rvm/gems/ruby-2.4.0/gems/passenger-5.1.2/buildout/apache2/mod_passenger.so
<IfModule mod_passenger.c>
  PassengerRoot /home/vagrant/.rvm/gems/ruby-2.4.0/gems/passenger-5.1.2
  PassengerDefaultRuby /home/vagrant/.rvm/gems/ruby-2.4.0/wrappers/ruby
</IfModule>

passenger-install-apache2-module

# copy configuration into apache
sudo mkdir -p /usr/share/puppet/rack/puppetmasterd/{public,tmp}

# copy config file to puppet master appln dir
# not working below line
# sudo cp /usr/share/puppet/ext/rack/config.ru /usr/share/puppet/rack/puppetmasterd/
sudo  cp /home/vagrant/.rvm/gems/ruby-2.4.0/gems/rack-2.0.1/lib/rack/config.rb /usr/share/puppet/rack/puppetmasterd/

# chaning file permission
sudo chown puppet:puppet /usr/share/puppet/rack/puppetmasterd/config.rb
ls -la /usr/share/puppet/rack/puppetmasterd/config.rb

# copy passenger config
cd ~
git clone https://github.com/benpiper/puppet-fundamentals-puppetmaster
cd puppet-fundamentals-puppetmaster
# changed some config accordingly
sudo nano puppetmaster.conf

# addin below lines
LoadModule passenger_module /home/vagrant/.rvm/gems/ruby-2.4.0/gems/passenger-5.1.2/buildout/apache2/mod_passenger.so
PassengerRoot /home/vagrant/.rvm/gems/ruby-2.4.0/gems/passenger-5.1.2
PassengerDefaultRuby /home/vagrant/.rvm/gems/ruby-2.4.0/wrappers/ruby

sudo cp puppetmaster.conf /etc/httpd/conf.d/puppetmaster.conf

# starting apache
sudo service httpd start
# making apache started on each boot
sudo chkconfig httpd on
