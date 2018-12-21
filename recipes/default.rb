#
# Cookbook:: hello_world
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

# Group and user creation
group node['hello_world']['group'] do
  gid node ['hello_world']['gid']
end

user node['hello_world']['user'] do
  uid node['hello_world']['uid']
  comment node['hello_world']['comment']
  group node['hello_world']['group']
  home node['hello_world']['home']
  shell node['hello_world']['shell']
end

# Package install
%W[#{node['hello_world']['package']['java_1_8']} #{node'hello_world']['package']['net_tools']} #{node'hello_world']['package']['httpd']}].each do |pkg|
  package pkg
end

# Custom tmp directory
directory node['hello_world']['custom_tmp_dir'] do
  owner node['hello_world']['user']
  group node ['hello_world']['group']
  mode '0755'
  recursive true

  only_if do
    !node['hello_world']['custom_tmp_dir'].nil? &&
    !node['hello_world']['custom_tmp_dir'].empty? &&
    node['hello_world']['custom_tmp_dir'] != '/tmp'
  end
end
