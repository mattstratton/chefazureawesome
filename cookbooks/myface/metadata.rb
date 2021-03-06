name             'myface'
maintainer       'Mischa Taylor'
maintainer_email 'mischa@misheska.com'
license          'Apache 2.0'
description      'Installs/Configures myface'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.0.8'

depends 'apache2', '~> 1.8.0'
depends 'mysql'
depends 'database', '~> 2.3.0'
depends 'php', '~> 1.3.0'
