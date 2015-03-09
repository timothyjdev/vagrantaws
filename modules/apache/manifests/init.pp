# Class: apache
#
# This class installs Apache
#
# Actions:
#   - Install Apache
#   - Manage Apache service
#   - Create default html page
#
class apache {
  package { 'apache2':
    ensure => present,
  }

  service { 'apache2':
    ensure  => running,
    require => Package['apache2'],
  }

  file { '/var/www/html/index.html':
    ensure  => file,
    source  => 'puppet:///modules/apache/index.html',
    require => Package['apache2'],
  }
}
