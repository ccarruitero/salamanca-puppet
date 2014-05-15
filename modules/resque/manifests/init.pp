class resque {
  package {"resque":
    ensure => present,
    provider => gem
  }
}
