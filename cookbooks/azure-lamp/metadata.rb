name             'azure-lamp'
maintainer       'Matt Stratton'
maintainer_email 'mattstratton@getchef.com'
license          'Apache 2.0'
description      'Installs/Configures LAMP stack'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends 'apt'
depends 'apache2'
depends 'mysql'
depends 'database'
depends 'php'
