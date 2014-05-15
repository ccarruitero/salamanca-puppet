class capistrano {
  include rvm

  rvm_system_ruby {
    'ruby-1.9.3-p545':
      ensure => 'present',
      default_use => false;
  }

  rvm_gemset {
    "ruby-1.9.3-p545@salamanca":
      ensure => present,
      require => Rvm_system_ruby['ruby-1.9.3-p545'];
  }

  rvm_gem {
    'ruby-1.9.3-p290@salamanca/capistrano':
      ensure => 'latest',
      require => Rvm_gemset['ruby-1.9.3-p545@salamanca'];
  }
}
