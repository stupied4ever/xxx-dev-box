class ruby {
  package { 'chruby': }
  package { 'ruby-install-git': }

  ruby::install { '2.0.0-p353':
    gems    => 'bundler pry pry-debugger pry-nav',
    require => Package['ruby-install-git']
  }
}
