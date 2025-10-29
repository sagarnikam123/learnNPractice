# default.rb

#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install apache package

package 'apache2' do
        package_name 'httpd'
        action :install
end

service 'apache2' do
        service_name 'httpd'
        action [:start, :enable]
end
