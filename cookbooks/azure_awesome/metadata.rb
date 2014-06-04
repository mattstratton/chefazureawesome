name             'azure_awesome'
maintainer       'Matt Stratton'
maintainer_email 'mattstratton@getchef.com'
license          'Apache 2.0'
description      'Installs/Configures azure_awesome'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.21'
supports 'windows'


depends "windows", "~> 1.31.0"
depends "iis", "~> 2.1.2"