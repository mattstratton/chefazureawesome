#
# Cookbook Name:: myface
# Recipe:: webserver
#
# Copyright (C) 2012 Sean OMeara
# 
# Apache 2 license
#

include_recipe "apache2"
include_recipe "apache2::mod_php5"
include_recipe "php::module_mysql"

# disable default site
apache_site "000-default" do
  enable false
end

# create document root
directory  "/srv/apache/myface" do
  action :create
  recursive true
end

# create apache config
template "#{node['apache']['dir']}/sites-available/myface.conf" do
  source "apache2.conf.erb"
  notifies :restart, 'service[apache2]'
end

# enable myface
apache_site "myface.conf" do
  enable true
end

# write site
template "/srv/apache/myface/index.php" do
  source "index.php.erb"
  mode "644"
end
