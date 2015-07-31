#
# Cookbook Name:: OpENer
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'git::default'
include_recipe 'CppUTest::default'
include_recipe 'build-essential::default'
include_recipe 'cmake::default'

git node['OpENer']['folder'] do
  repository node['OpENer']['url']
  reference 'master'
  user 'vagrant'
  group 'vagrant'
  action :sync
end
