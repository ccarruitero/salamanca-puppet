class rails {


  package {"rails":
    ensure => present,
    provider => gem
  }
}
