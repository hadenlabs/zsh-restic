#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install restic for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

ZSH_RESTIC_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_RESTIC_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_RESTIC_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_RESTIC_PATH}"/pkg/main.zsh

# shellcheck source=/dev/null
source "${RESTIC_SRC_DIR}"/base.zsh
