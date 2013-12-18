#!/bin/bash

# Starts the provisioning with Puppet.
#
# This script should be called in the first provisioning and
# after any changes are made to the configurations.

MODULEPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../manifests" && pwd )"

sudo env \
  FACTER_home="$HOME" \
  FACTER_user="$USER" \
  FACTER_group="users" \
  FACTER_modulepath="$MODULEPATH" \
  FACTER_tty=`tty` \
  puppet apply manifests/default.pp --modulepath "$MODULEPATH"
