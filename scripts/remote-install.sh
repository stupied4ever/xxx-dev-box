#!/bin/bash

# Starting point for configuration installation in a brand new machine.
#
# Clones the configuration repository and starts the installation.
#
# This script should run only once for OS installation.

if [[ ! $(cat /etc/os-release 2>&1) =~ "Arch Linux" ]];then
  echo "This installation script is for Arch Linux [https://www.archlinux.org] only!"
  exit
fi

sudo bash <<SCRIPT
pacman -Syu --noconfirm
pacman -S git --noconfirm
SCRIPT

git clone git://github.com/leafac/dev-box.git

(cd dev-box && mkdir code && exec scripts/install.sh)
