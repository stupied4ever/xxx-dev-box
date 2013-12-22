class archlinux::packages {
  package {[
    # Fonts.

    'ttf-dejavu',
    'ttf-droid',
    'ttf-ms-fonts',
    'ttf-bitstream-vera',

    # Compression tools.

    'zip',
    'unzip',
    'unrar',
    'p7zip',

    # Network management.

    'wicd',
    'wicd-gtk',

    # Web.

    'chromium',
    'flashplugin',

    # Command Line Tools

    'httpie',

    # Video player.

    'vlc',

    # Time synchronization.

    'ntp',

    # Torrent Clients

    'deluge',

  ]: }
}
