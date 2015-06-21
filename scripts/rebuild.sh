#!/usr/bin/env bash

# NAME
#     rebuild.sh - Rebuilds the site docroot using Drush Make.
#
# SYNOPSIS
#     rebuild.sh [options]
#
# DESCRIPTION
#     rebuild.sh reconstructs the site docroot, using Drush Make to download
#     third party components like modules and libraries, and restoring symlinks
#     to custom assets. It is most commonly run to download a new module or
#     library added to a Drush Make file.
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

echo "Rebuilding docroot. This may take a few minutes..."

delete docroot

if [ ${VERBOSE} = 0 ]; then
  QUIET="--quiet"
fi

${DRUSH} make ${REPO_DIR}/build.make ${REPO_DIR}/docroot \
  ${QUIET} --concurrency=10 1> /dev/null

# Restore ctools.info. We need a version number above 1.4 or else things will
# break when we run updates. Drush Make should generate the version number for
# Git checkouts. But this seems to have stopped working sometime before 1/30/15.
# @todo This is an unsustainable solution. Find and fix the root cause.
#restore_from_vcs docroot/sites/whitehouse.gov/modules/contrib/ctools/ctools.info

# Restore assets.

# Restore custom projects.
restore_from_vcs docroot/profiles/billie

# Restore libraries.

# Restore local development files.
ln -s ${REPO_DIR}/local/settings.php ${REPO_DIR}/docroot/sites/default/settings.php
#ln -s ../../../assets/files docroot/sites/default/files

# Clean up .info files.
# Differences between GNU- and non-GNU-compatible tools require us to fork the
# following code for OS.
#UNAME=`uname`
#if [ ${UNAME} = "Linux" ]; then
#  find ${REPO_DIR} -name '*.info' -exec sed -i '/datestamp = /d;/Information added by/d' "{}" \;
#elif [ ${UNAME} = "Darwin" ] || [ ${UNAME} = "FreeBSD" ]; then
#  find -E ${REPO_DIR} -regex ".*\.(info)" > tmpdel
#  xargs sed -i .deleteme '/datestamp = /d' < tmpdel
#  xargs sed -i .deleteme '/Information added by/d' < tmpdel
#  find ${REPO_DIR} -name "*.deleteme" -type f -delete
#  rm tmpdel
#fi
