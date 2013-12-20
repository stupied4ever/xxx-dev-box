class ruby::chruby(
  $ruby_install_version = '2.0.0-p353',
) {
  exec { "install ruby-install $ruby_install_version":
    command => "wget -O ruby-install-${ruby_install_version}.tar.gz https://github.com/postmodern/ruby-install/archive/v${ruby_install_version}.tar.gz && tar -xzvf ruby-install-${ruby_install_version}.tar.gz && (cd ruby-install-${ruby_install_version}/ && make install) && rm ruby-install-${ruby_install_version}.tar.gz && rm -rf ruby-install-${ruby_install_version}",
    creates => '/usr/local/share/ruby-install/ruby-install.sh',
    cwd     => '/tmp',
    user    => 'root',
    group   => 'root',
  }
}
