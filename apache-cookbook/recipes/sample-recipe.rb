#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/ChefConfigfile' do
  content "This is to get node details form ohai
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end


