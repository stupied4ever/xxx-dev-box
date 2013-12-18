#!/bin/bash

# Install the bare minimum to bootstrap and start the first provisioning.
#
# This script should run only once for OS installation.

function main {
  install_yaourt
  install_puppet
  call_first_provisioning
}

function install_yaourt {
sudo bash <<SCRIPT

cat >> /etc/pacman.conf << "YAOURT_REPOSITORY"
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/\$arch
YAOURT_REPOSITORY

pacman -Sy
pacman -S yaourt --noconfirm
SCRIPT
}

function install_puppet {
  yaourt -S puppet --noconfirm
}

function call_first_provisioning {
  exec scripts/provision.sh
}

main
