# motd.rb

hostname = node['hostname']
file '/etc/motd' do
	content "Hostname is this: #{hostname}"
end
