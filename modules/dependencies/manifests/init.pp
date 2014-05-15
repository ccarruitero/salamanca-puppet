class dependencies(
) {
  package{"libdbd-mysql-perl":
    ensure => present
  }
  package{"libdbi-perl":
    ensure => installed
  }
  package{"libmysqlclient18":
    ensure => installed
  }
  package{"libnet-daemon-perl":
    ensure => installed
  }
  package{"libplrpc-perl":
    ensure => installed
  }
  package{"mysql-client-5.5":
    ensure => installed
  }
  package {"mysql-client-core-5.5":
    ensure => installed
  }
  package {"mysql-common":
    ensure => installed
  }

  # for rvm
  package {"libxml2":
    ensure => installed
  }
  package {"libxml2-dev":
    ensure => installed
  }
  package {"libxslt1-dev":
    ensure => installed
  }
  package {"libxslt1.1":
    ensure => installed
  }
}
