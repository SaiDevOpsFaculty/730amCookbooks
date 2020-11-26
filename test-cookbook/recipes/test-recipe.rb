#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.


file '/Pythonfile' do
  content 'Hello Dear Students!! Good Morning!!!'
  action :create
end

#execute "run a script" do
#  command <<-EOH
#  mkdir /saidir
#  touch /saifile
#  EOH
#end

user "rahul" do
  action :create
end

group "DevOps" do
  action :create
  members 'rahul'
  append true
end













