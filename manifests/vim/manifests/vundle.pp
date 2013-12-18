class vim::vundle {
  git::clone { 'vundle':
    repository => 'git://github.com/gmarik/vundle.git',
    path       => "$home/.vim/bundle/vundle",
  }

  exec { "update Vim plugins":
    command => "sudo -u $user vim -u $home/.vim/config/plugins/vundle.vim +BundleInstall +qa",
    require => Git::Clone['vundle'],
  }
}
