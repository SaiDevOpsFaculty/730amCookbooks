#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

file '/Javafile' do
  content 'This is my second file'
  action :create
end

#['httpd','mariadb-server','unzip','git','vim','mysql'].each do |p|
#  package p do
#    action :install
#  end
#end

%w(httpd mariadb-server unzip git vim mysql).each do |p|
  package p do
    action :install
  end
end

%w(user1 user2 user3 user4 user5 user6).each do |p|
  user p do
    action :create
  end
end

file '/rahulfile' do
  content 'This is my second file'
  action :create
end

