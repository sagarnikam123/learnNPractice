# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chefcentos"
client_key               "#{current_dir}/chefcentos.pem"
chef_server_url          "https://sagarnikam1231.mylabserver.com/organizations/cheforg"
cookbook_path            ["#{current_dir}/../cookbooks"]
