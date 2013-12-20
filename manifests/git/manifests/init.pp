class git {
  package { 'git': }

  file { "$home/.gitconfig":
    ensure => link,
    target => "$modulepath/git/files/config",
  }

  file { "$home/.gitignore":
    ensure => link,
    target => "$modulepath/git/files/ignore",
  }
}
