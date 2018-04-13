#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#
package 'postgresql-service' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postgres-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
