class zsh {
  package { 'zsh': }

  git::clone { 'oh-my-zsh':
    repository => 'git://github.com/stupied4ever/oh-my-zsh.git',
    path       => "$modulepath/zsh/files",
  }

  file { "$home/.oh-my-zsh":
    ensure => link,
    target => "$modulepath/zsh/files",
    require => Git::Clone['oh-my-zsh'],
  }

  file { "$home/.zshrc":
    ensure  => link,
    target  => "$home/.oh-my-zsh/zshrc",
    require => File["$home/.oh-my-zsh"],
  }

  exec { "change default shell for $user to zsh":
    command => "chsh -s /bin/zsh $user",
    unless  => 'echo "$SHELL" | grep -q "zsh"',
    user    => 'root',
    group   => 'root',
  }
}
