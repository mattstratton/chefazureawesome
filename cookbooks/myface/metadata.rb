name             "myface"
maintainer       "Sean OMeara"
maintainer_email "someara@opscode.com"
license          "Apache 2"
description      "Installs/Configures myface"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.0"

depends "mysql"
depends "database"
depends "apache2"
depends "php"





