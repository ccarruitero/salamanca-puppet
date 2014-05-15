exec { "apt-get update":
  path => "/usr/bin"
}

include dependencies
include curl
include git
include nginx
class { 'mysql::install': }
include capistrano
include monit

# set order
Class['dependencies'] ->
Class['curl'] ->
Class['git'] ->
Class['nginx'] ->
Class['mysql::install'] ->
Class['capistrano'] ->
Class['monit']
