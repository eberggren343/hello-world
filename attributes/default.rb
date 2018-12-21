
# Packages
default['hello_world']['package'] = {
  java_1_8: 'java-1.8.0-openjdk',
  httpd: 'httpd'
}

# Basic Attributes
default['hello_world']['user'] = 'kenobi'
default['hello_world']['group'] = 'jedi'
default['hello_world']['uid'] = nil
default['hello_world']['comment'] = 'Test chef hello_world'
default['hello_world']['shell'] = '/bin/bash'
default['hello_world']['group'] = 'hello_world'
default['hello_world']['group_gid'] = nil
default['hello_world']['base'] = '/proj'
default['hello_world']['home'] = "#{node['hello_world']['base_dir']}/hello_world"
default['hello_world']['custom_tmp_dir'] = "#{node['hello_world']['base_dir']}/tmp"
