#!/usr/bin/env bash

# NAME
#     dev-setup.sh - Rebuilds the site docroot using Drush Make.
#
# SYNOPSIS
#     dev-setup.sh [options]
#
# DESCRIPTION
#     Runs rebuild.sh and reinstall.sh. After setting up the drupal site, logs
#     the user in as user 1.
#
# OPTIONS
#     -v
#         Makes the script more talkative. Mostly useful for debugging.

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
source "${SCRIPT_DIR}/includes.sh"

read -p "
  ********
  This script will completely rebuild and reinstall this drupal installation.
  The docroot directory will be destroyed and rebuilt with drush make.
  Any existing data in the database will also be dropped before the new drupal site is installed.
  ********

  Are you sure you want to continue? (y/n)
  " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    ${SCRIPT_DIR}/rebuild.sh
    ${SCRIPT_DIR}/reinstall.sh
    if hash drush 2>/dev/null; then
        cd ${REPO_DIR}/docroot
        drush uli 1 / --uri=billie.local
    fi
fi
