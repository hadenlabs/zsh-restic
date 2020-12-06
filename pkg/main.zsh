#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function restic::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_RESTIC_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_RESTIC_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_RESTIC_PATH}"/pkg/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_RESTIC_PATH}"/pkg/helper.zsh

    # shellcheck source=/dev/null
    source "${ZSH_RESTIC_PATH}"/pkg/alias.zsh
}

restic::pkg::main::factory