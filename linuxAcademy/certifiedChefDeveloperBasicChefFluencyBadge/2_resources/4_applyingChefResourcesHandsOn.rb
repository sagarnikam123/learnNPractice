# 4_Applying Chef Resources Hands On

#pre-convergence
ruby -c learn.rb

# checking chef syntax
foodcritic learn.rb

# runnig locally chef-client
# * No candidate version available for apache
# Error executing action `install` on resource 'yum_package[apache]'
chef-client --local-mode learn.rb

# edit above file to add package_name & service's details
# pre-convergence
ruby -c learn.rb && foodcritic learn.rb

# check apache status
systemctl status httpd

# copy machine's public ip/public hostname into browser
# sagarnikam1231.mylabserver.com
# 52.221.230.248

# check permission on index.html
ls -al /var/www/index.html

# check for deleated file
ls -al /var/www

# check for permission for newly created file
ls -al /var/www/html/

# add manually content in /var/www/index.html
# This is my file
vim /var/www/index.html

#again execute chef-client
chef-client --local-mode learn.rb

# check on terminal & on browser also
cat /var/www/html/index.html
