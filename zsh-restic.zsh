#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install restic for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
restic_package_name=restic

ZSH_RESTIC_PATH_ROOT=$(dirname "${0}":A)

# shellcheck source=/dev/null
source "${ZSH_RESTIC_PATH_ROOT}"/src/helpers/messages.zsh

# shellcheck source=/dev/null
source "${ZSH_RESTIC_PATH_ROOT}"/src/helpers/tools.zsh

function restic::install {
    message_info "Installing ${restic_package_name}"
    if ! type -p brew > /dev/null; then
        message_error "it's neccesary brew, add: luismayta/zsh-brew"
    fi
    brew install restic
    message_success "Installed ${restic_package_name}"
}

if ! type -p restic > /dev/null; then restic::install; fi
