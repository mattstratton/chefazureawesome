#
# Cookbook Name:: azure_awesome
# Attributes:: default
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


default[:awesome_demo][:apppool_user] = "awesome-demo-pool"
default[:awesome_demo][:apppool_password] = "PoolAdmin123"
default[:awesome_demo][:web_root] = "c:/webroot/awesome-demo"
default[:awesome_demo][:log_root] = "c:/logs"
default[:iis][:accept_eula] = true