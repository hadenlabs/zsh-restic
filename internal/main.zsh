#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_RESTIC_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_RESTIC_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_RESTIC_PATH}"/internal/linux.zsh
      ;;
    esac
}

internal::main::factory

if ! type -p restic > /dev/null; then restic::internal::restic::install; fi