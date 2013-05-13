class pam_mysql {
  include homebrew
  include pam_mysql::config

  homebrew::formula { 'pam_mysql':
    before => Package['boxen/brews/pam_mysql'],
  }

  package { 'boxen/brews/pam_mysql':
    ensure => '0.7-rc1-boxen1',
  }
}
