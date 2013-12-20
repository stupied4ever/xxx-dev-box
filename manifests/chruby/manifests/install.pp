define ruby::install(
  $ruby    = 'ruby',
  $version = $title,
  $gems    = false,
) {

  if $gems {
    $command = "ruby-install $ruby $version && chruby-exec $ruby $version -- gem install $gems"
  }
  else {
    $command = "ruby-install $ruby $version"
  }

  exec { "install Ruby `$version'":
    command => $command,
    creates => "/opt/rubies/$ruby-$version",
    timeout => 0,
    require => Class['ruby::chruby'],
    user    => 'root',
    group   => 'root',
  }
}
