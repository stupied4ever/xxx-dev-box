class ruby {
  package { 'chruby': }

  ruby::install { '2.0.0-p353':
    gems => 'bundler pry pry-debugger pry-nav',
  }
}
