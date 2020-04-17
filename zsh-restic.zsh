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
[ -z "${RESTIC_REPOSITORY}" ] && export RESTIC_REPOSITORY=/Volumes/MrRobot/Backup

cat > "${RESTIC_FILE_EXCLUDE}" << EOF
$HOME/.cache
$HOME/.dbus
$HOME/.gvfs
$HOME/.kube/cache
$HOME/.kube/http-cache
$HOME/.config
$HOME/.cookiecutter_replay
$HOME/.cookiecutters
$HOME/gdrive
$HOME/go/pkg/mod
$HOME/go/src
$HOME/snap
$HOME/Projects
EOF

# shellcheck source=/dev/null
source "${RESTIC_SRC_DIR}"/base.zsh

function backup {
    restic backup -r "${RESTIC_REPOSITORY}" --exclude-file "${RESTIC_FILE_EXCLUDE}" "${HOME}"
}
