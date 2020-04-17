#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function restic::install {
    message_info "Installing ${RESTIC_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${GHQ_MESSAGE_BREW}"
        return
    fi
    brew install restic
    message_success "Installed ${RESTIC_PACKAGE_NAME}"
}

if ! type -p restic > /dev/null; then restic::install; fi