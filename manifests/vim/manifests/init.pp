class vim {
  package { 'gvim': }

  file { "$home/.vim":
    ensure => link,
    target => "$modulepath/vim/files",
  }

  file { "$home/.vimrc":
    ensure  => link,
    target  => "$home/.vim/config/main.vim",
    require => File["$home/.vim"],
  }

  class { 'vundle':
    require => File["$home/.vimrc"],
  }
}
