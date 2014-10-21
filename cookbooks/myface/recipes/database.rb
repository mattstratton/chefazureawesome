#
# Cookbook Name:: myface
# Recipe:: default
#
# Copyright (C) 2012 Sean OMeara
# 
# Apache 2 license
#

include_recipe "mysql::server"
include_recipe "mysql::ruby"

mysql_database 'myface' do
  connection ({
      :host => "localhost",
      :username => 'root',
      :password => node['mysql']['server_root_password']
    })
  action :create
end

cookbook_file "/tmp/myface-init.sql" do
  source "myface-init.sql"
  owner "root"
  mode "644"
end

execute "initialize myface database" do
  command "mysql -h localhost -u root -p#{node['mysql']['server_root_password']} -D myface < /tmp/myface-init.sql"
  not_if "mysql -h localhost -u root -p#{node['mysql']['server_root_password']} -D myface -e 'describe users;'"
end

