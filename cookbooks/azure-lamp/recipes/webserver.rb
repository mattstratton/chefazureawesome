#
# Cookbook Name:: azure-lamp
# Recipe:: webserver
#
# Copyright 2013 - 2014, Chef Software, Inc.
#
# All rights reserved - Do Not Redistribute
#

# This recipe will install and configure apache to serve our app

# We need a webserver
include_recipe 'apache2'
include_recipe 'apache2::mod_php5'

template File.join(node['apache']['dir'], '/sites-available/mysite.conf') do
  source 'mysite.conf.erb'
  variables(
    # :params => {
    #   :docroot => '',
    #   :server_name => 'www.mysite.com',
    #   :server_aliases => ['mysite.com'],
    #   :mod_wsgi_path => '/opt/mysite/mysite/wsgi.py',
    #   :static_path => '/opt/mysite/mysite/static'
    # }
  )
end

apache_site 'mysite.conf' do
  action :enable
end
