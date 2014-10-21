# Database configuration
default['my-app']['database']['db_host'] = nil
default['my-app']['database']['db_schema_name'] = 'opscode'
default['my-app']['database']['db_user'] = 'opscode'
default['my-app']['database']['db_pass'] = 'opscode'

# Application configuration
default['my-app']['application']['package'] = 'mysite-A.tar.gz'
default['my-app']['application']['package_url'] = 'http://demo-framework.s3.amazonaws.com/mysite-A.tar.gz'
default['my-app']['application']['package_sum'] = '73e5cf3287e4d903d3828da5be1ab228ea33152447551b4e489e659268f643b2'

# Webserver configuration
default['my-app']['webserver']['apache_port'] = '80'
default['my-app']['webserver']['server_name'] = 'www.mysite.com'
default['my-app']['webserver']['server_aliases'] = Array[]

