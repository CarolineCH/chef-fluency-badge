#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#
#
if node['platform_family'] == "rhel"
	package = "http"
elsif node['platform_family'] == "debian"
	package = "apache2"
end
package 'apache2' do
	package_name package
	action :install
end


service 'apache2' do 
	service_name package
	action [:start, :enable] #this is a comment
end	
