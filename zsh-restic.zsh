#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install restic for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>

export RESTIC_PACKAGE_NAME="restic"
RESTIC_ROOT_DIR=$(dirname "$0")
RESTIC_SRC_DIR="${RESTIC_ROOT_DIR}"/src
export GHQ_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"

[ -z "${RESTIC_FILE_EXCLUDE}" ] && export RESTIC_FILE_EXCLUDE="${HOME}/tmp/restic_excludes"
[ -z "${RESTIC_PASSWORD_COMMAND}" ] && unset RESTIC_PASSWORD_COMMAND
[ -n "${RESTIC_PASSWORD}" ] && echo "${RESTIC_PASSWORD}" > "${RESTIC_PASSWORD_FILE}"
[ -z "${RESTIC_REPOSITORY}" ] && export RESTIC_REPOSITORY=/Volumes/MrRobot/Backup

# shellcheck source=/dev/null
source "${RESTIC_SRC_DIR}"/base.zsh

function restic::backup {
    restic backup -r "${RESTIC_REPOSITORY}" "${HOME}/.ssh" -v 2
    restic backup -r "${RESTIC_REPOSITORY}" "${HOME}/Documents" -v 2
    restic backup -r "${RESTIC_REPOSITORY}" /Volumes/Keybase/private/luismayta/* -v 2
    restic backup -r "${RESTIC_REPOSITORY}" /Volumes/Keybase/team/* -v 2
}
