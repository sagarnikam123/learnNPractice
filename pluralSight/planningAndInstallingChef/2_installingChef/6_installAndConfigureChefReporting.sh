# 6_Install and Configure Chef Reporting

# tried but not installed propertly

sudo chef-server-ctl install opscode-reporting

sudo chef-server-ctl reconfigure

sudo opscode-reporting-ctl reconfigure

#Running handlers:
#[2017-01-06T00:51:20-08:00] ERROR: Running exception handlers
#Running handlers complete
#[2017-01-06T00:51:20-08:00] ERROR: Exception handlers complete
#Chef Client failed. 0 resources updated in 01 minutes 02 seconds
#[2017-01-06T00:51:20-08:00] FATAL: Stacktrace dumped to /opt/opscode-reporting/embedded/cookbooks/cache/chef-stacktrace.out
#[2017-01-06T00:51:20-08:00] FATAL: Please provide the contents of the stacktrace.out file if you file a bug report
#[2017-01-06T00:51:20-08:00] ERROR: execute[initctl status private-chef-runsvdir] (enterprise::runit_upstart line 28) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0], but received '1'
#---- Begin output of initctl status private-chef-runsvdir ----
#STDOUT: 
#STDERR: initctl: Unable to connect to Upstart: Failed to connect to socket /com/ubuntu/upstart: Connection refused
#---- End output of initctl status private-chef-runsvdir ----
#Ran initctl status private-chef-runsvdir returned 1
#[2017-01-06T00:51:20-08:00] FATAL: Chef::Exceptions::ChildConvergeError: Chef run process exited unsuccessfully (exit code 1)
