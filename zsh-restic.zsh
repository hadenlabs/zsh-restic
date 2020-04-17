#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install restic for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
export RESTIC_PACKAGE_NAME="restic"
RESTIC_ROOT_DIR=$(dirname "$0")
RESTIC_SRC_DIR="${RESTIC_ROOT_DIR}"/src
export GHQ_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"

# shellcheck source=/dev/null
source "${RESTIC_SRC_DIR}"/base.zsh
