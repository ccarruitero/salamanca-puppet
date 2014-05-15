# install mysql client

class mysql::install(
  # get db config from env
) {
  package{"mysql-client":
    ensure => installed
    #ensure => present
  }
}
