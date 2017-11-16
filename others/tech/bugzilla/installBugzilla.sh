#bugZilla installation

# remove apache2 & mysql
#apache2
sudo apt-get remove apache2*
sudo apt-get autoremove
sudo apt-get autoclean

#mysql
sudo service mysql stop  #or mysqld
sudo killall -9 mysql
sudo killall -9 mysqld
sudo apt-get remove --purge mysql-server mysql-client mysql-common
sudo apt-get autoremove
sudo apt-get autoclean
sudo rm -rf /var/lib/mysql
sudo rm -rf /var/log/mysql
sudo rm -rf /etc/mysql

# install LAMP server (mysql & apache)
sudo apt update && sudo apt upgrade
sudo apt install tasksel
sudo tasksel

#configuring apache2
sudo gedit /etc/apache2/sites-available/bugzilla.conf
################################################################################
ServerName localhost

<Directory /var/www/html/bugzilla>
  AddHandler cgi-script .cgi
  Options +ExecCGI
  DirectoryIndex index.cgi index.html
  AllowOverride All
</Directory>
################################################################################

#install other packages
sudo apt-get install libappconfig-perl libdate-calc-perl libtemplate-perl libmime-perl build-essential libdatetime-timezone-perl libdatetime-perl libemail-sender-perl libemail-mime-perl libemail-mime-modifier-perl libdbi-perl libdbd-mysql-perl libcgi-pm-perl libmath-random-isaac-perl libmath-random-isaac-xs-perl  libapache2-mod-perl2 libapache2-mod-perl2-dev libchart-perl libxml-perl libxml-twig-perl perlmagick libgd-graph-perl libtemplate-plugin-gd-perl libsoap-lite-perl libhtml-scrubber-perl libjson-rpc-perl libdaemon-generic-perl libtheschwartz-perl libtest-taint-perl libauthen-radius-perl libfile-slurp-perl libencode-detect-perl libmodule-build-perl libnet-ldap-perl libauthen-sasl-perl libtemplate-perl-doc libfile-mimeinfo-perl libhtml-formattext-withlinks-perl libgd-dev libmysqlclient-dev lynx-cur graphviz python-sphinx

# crete mysql user & grant all privileges
CREATE USER 'quanta'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'quanta'@'localhost';
GRANT ALL PRIVILEGES ON * . * TO 'root'@'localhost';

# restarting mysql & apache2
sudo service apache2 restart
sudo service mysql restart

# create database with name bugzilla and grant the privileges.
sudo su
mysql -u root
create database bugs;
CREATE USER 'quanta'@'localhost' IDENTIFIED BY '';
GRANT ALL ON bugs.*TO quanta@localhost;
FLUSH PRIVILEGES;
exit

# copy bugzilla folder
cp -R /home/quanta/Downloads/bugzilla /var/www/html/.

# checking perl modules
cd /var/www/html/bugzilla
./checksetup.pl --check-modules
sudo perl install-module.pl -all

# If not installed...
sudo perl -MCPAN -e install

# generate a localconfig file
cd /var/www/html/bugzilla
./checksetup.pl

# Run the command again  it will ask you for the credentials :-
./checksetup.pl

# enable rewrite and CGI module in apache2
sudo a2ensite bugzilla
sudo service apache2 restart
sudo a2enmod cgi headers expires
sudo a2enmod rewrite
sudo service apache2 restart

#  rename the .htaccess file in asset and data folder of bugzilla :
cd /var/www/html/bugzilla/data/
mv .htaccess .htaccess-old

cd /var/www/html/bugzilla/data/assets
mv .htaccess .htaccess-old

# restart apache2
sudo service apache2 restart
