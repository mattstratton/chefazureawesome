#
# Cookbook Name:: azure_awesome
# Recipe:: default
#
# Copyright 2014, Matt Stratton
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# install the IIS-WebServerRole

%w[IIS-WebServerRole NetFx4 NetFx4Extended-ASPNET45 IIS-ISAPIFilter IIS-ISAPIExtensions IIS-NetFxExtensibility45 IIS-ASPNET45].each do |feature|
  windows_feature feature do
    action :install
  end
end

# Create the webroot and the log root

directory node[:awesome_demo][:web_root] do
  recursive true
end

directory node[:awesome_demo][:log_root] do
  recursive true
end

# stop and delete the default site
iis_site 'Default Web Site' do
  action [:stop, :delete]
end

#creates a new app pool
iis_pool 'awesome_demo' do
    runtime_version "4.0"
    pipeline_mode :Integrated
    pool_username node[:awesome_demo][:apppool_user]
    pool_password node[:awesome_demo][:apppool_password] 
    action [:add,:config]
end

# create and start a new site that maps to
# the physical location specified in the webroot
iis_site 'awesome_demo' do
  protocol :http
  port 80
  path node[:awesome_demo][:web_root]
  application_pool 'awesome_demo'
  action [:add,:start]
end