class tmux {
  package { 'tmux': }

  file {"$home/.tmux":
    ensure => link,
    target => "$modulepath/tmux/files",
  }

  file {"$home/.tmux.conf":
    ensure  => link,
    target  => "$home/.tmux/tmux.conf",
    require => File["$home/.tmux"],
  }
}
