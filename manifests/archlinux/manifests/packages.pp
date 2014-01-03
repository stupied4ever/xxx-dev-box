class archlinux::packages {
  package {[
    # Fonts.

    'ttf-dejavu',
    'ttf-droid',
    'ttf-ms-fonts',
    'ttf-bitstream-vera',

    # PDF viewer

    'evince',

    # Compression tools.

    'zip',
    'unzip',
    'unrar',
    'p7zip',
    'rar',

    # Network management.

    'wicd',
    'wicd-gtk',

    # Web.

    'chromium',
    'flashplugin',

    # Command Line Tools

    'httpie',
    'ack',

    # Cloud files clients

    'seafile',

    # Video player.

    'vlc',

    # Time synchronization.

    'ntp',

    # Torrent Clients

    'deluge',

    # Programming Languages

    'python',
    'python-pip',

    # DBs

    'mongodb',

    # Disk Utilities

    'gparted',

  ]: }
}
