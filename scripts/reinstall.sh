#!/usr/bin/env bash

# NAME
#     reinstall.sh - Installs the site.
#
# SYNOPSIS
#     reinstall.sh [options]
#
# DESCRIPTION
#     reinstall.sh installs or reinstalls the site for local development.
#
# OPTIONS
#     -v
#         Makes the script more talkative. Mostly useful for debugging.

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
source "${SCRIPT_DIR}/includes.sh"

abort_if_no_drush

# Parse options.
VERBOSE=0
while getopts "v" OPT; do
  case ${OPT} in
    v) VERBOSE=1;;
  esac
done

echo "Installing the site. This may take a minute..."

if [ ${VERBOSE} = 0 ]; then
  QUIET="--quiet"
fi

${DRUSH} site-install standard \
  install_configure_form.update_status_module=NULL --yes ${QUIET} \
  --root=${REPO_DIR}/docroot --uri=http://billie.io --account-name=breese \
  --account-pass=admin --site-name=billie.io 1> /dev/null

#${DRUSH} en --yes ${QUIET} --root=${REPO_DIR}/docroot \
#  --uri=http://whitehouse.gov gov_whitehouse_www -y

# Restore .htaccess.
#cd ${REPO_DIR}
#unlink docroot/.htaccess
#ln -s ../assets/.htaccess-prod docroot/.htaccess
