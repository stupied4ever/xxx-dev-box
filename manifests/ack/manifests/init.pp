class ack {
  package { 'ack': }

  file { "$home/.ack":
    ensure => link,
    target => "$modulepath/ack/files",
  }

  file { "$home/.ackrc":
    ensure  => link,
    target  => "$home/.ack/config",
    require => File["$home/.ack"],
  }
}
