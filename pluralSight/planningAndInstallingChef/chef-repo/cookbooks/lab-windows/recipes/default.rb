#
# Cookbook:: lab-windows
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Enable Windows Telnet client feature

windows_feature "Telnet-Client" do
  action :install
  all true
  provider :windows_feature_powershell
end
