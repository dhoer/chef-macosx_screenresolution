name 'macosx_screenresolution'
maintainer 'Dennis Hoer'
maintainer_email 'dennis.hoer@gmail.com'
license 'MIT'
description 'Sets screen resolution on Mac OS X'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

supports 'mac_os_x', '>= 10.6'

depends 'dmg', '~> 2.2'
