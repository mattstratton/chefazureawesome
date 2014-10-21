#
# Cookbook Name:: myface
# Recipe:: default
#
# Copyright (C) 2012 Sean OMeara
# 
# Apache 2 license
#

include_recipe "myface::database"
include_recipe "myface::webserver"

