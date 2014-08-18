define git::pull($repository, $path) {
  exec { $title:
    command => "git pull",
  }
}
