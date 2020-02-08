name             'ds_opencv'
maintainer       'The Dark Sky Company, LLC'
maintainer_email 'bruce@darksky.net'
license          'Apache-2.0'
description      'Builds and installs opencv'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.3.2'

source_url 'https://github.com/darkskyapp/ds_opencv-cookbook'
issues_url 'https://github.com/darkskyapp/ds_opencv-cookbook/issues'

chef_version '>= 14.1.1'

supports 'ubuntu', '= 18.04'

depends 'git'
