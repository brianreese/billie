#!/usr/bin/env bash

# NAME
#     includes.sh - Common code for scripts.
#
# SYNOPSIS
#     SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
#     source "${SCRIPT_DIR}/includes.sh"
#
# DESCRIPTION
#     includes.sh contains code commonly used in the scripts in /scripts.

# The repository root.
REPO_DIR="$( cd "$( git rev-parse --show-cdup )" && pwd )"

# Paths to executable scripts.
DRUSH="${REPO_DIR}/vendor/bin/drush"
PHPUNIT="${REPO_DIR}/vendor/bin/phpunit"

# Tests for the presence of the Drush Composer package and abort if absent.
#
# @param string $1
#   The path to the package, relative to the repository root.
# @param string $2
#   The human-readable name of the package.
abort_if_missing_composer_package () {
  if [ ! -e ${1} ]; then
    echo >&2 "This script requires the ${2} Composer package, which is currently not installed."
    echo >&2 "You can install it by executing the following from the repository root:"
    echo >&2 "  composer install"
    exit 1
  fi
}

# Aborts if Drush is unavailable.
abort_if_no_drush () {
  abort_if_missing_composer_package ${DRUSH} Drush
}

# Aborts if PHPUnit is unavailable.
abort_if_no_phpunit () {
  abort_if_missing_composer_package ${PHPUNIT} PHPUnit
}

# Deletes files or directories.
#
# @param string $1
#   The path to delete, relative to the repository root.
delete () {
  verbose_output "Deleting ${1}."
  # BSD (Mac OSX) doesn't respect the -f flag to silence output if a file
  # doesn't exist. Redirect output.
  chmod -Rf u+w ${REPO_DIR}/${1} &> /dev/null
  rm -rf ${REPO_DIR}/${1}
}

# Restores a file or directory from version control.
#
# @param string $1
#   The path to restore, relative to the repository root.
restore_from_vcs () {
  delete $1
  verbose_output "Restoring ${1}."
  git -C ${REPO_DIR} checkout $1
}

# Prints output in verbose mode.
#
# @param string $1
#   The text to output.
verbose_output () {
  if [ ${VERBOSE} = 1 ]; then
    echo $1
  fi
}
