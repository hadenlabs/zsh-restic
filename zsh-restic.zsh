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

[ -z "${RESTIC_PASSWORD_COMMAND}" ] && unset RESTIC_PASSWORD_COMMAND
[ -z "${RESTIC_FILE_EXCLUDE}" ] && export RESTIC_FILE_EXCLUDE="${HOME}/tmp/restic_excludes"
[ -z "${RESTIC_REPOSITORY}" ] && export RESTIC_REPOSITORY=/Volumes/MrRobot/Backup
[ -z "${RESTIC_PATHS_BACKUP}" ] && export RESTIC_PATHS_BACKUP=(
        "${HOME}/.ssh"
        "${HOME}/Documents"
        /Volumes/Keybase/private/luismayta/*
        /Volumes/Keybase/team/*
    )


[ -n "${RESTIC_PASSWORD}" ] && echo "${RESTIC_PASSWORD}" > "${RESTIC_PASSWORD_FILE}"

# shellcheck source=/dev/null
source "${RESTIC_SRC_DIR}"/base.zsh

# restic::backup function for backup
function restic::backup {
    local path_name
    path_name="${1}"
    restic backup -r "${RESTIC_REPOSITORY}" "${path_name}" -v 2 --exclude-file "${RESTIC_FILE_EXCLUDE}"
}

# restic::backup::all backup all paths of var
function restic::backup::all {
    for path_name in "${RESTIC_PATHS_BACKUP[@]}"; do
        restic::backup "${path_name}"
    done
}
