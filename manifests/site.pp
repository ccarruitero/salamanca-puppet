exec { "apt-get update":
  path => "/usr/bin"
}

package {"git":
  ensure => present
}

package {"nginx_passenger":
  ensure => present
}

package {"monit":
  ensure => present
}

package {"mysql-client":
  ensure => present
}

package {"rails":
  ensure => present,
  provider => gem
}

package {"resque":
  ensure => present,
  provider => gem
}
