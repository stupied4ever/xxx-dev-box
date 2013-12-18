define git::clone($repository, $path) {
  exec { $title:
    command => "git clone $repository $path",
    creates => $path,
  }
}
