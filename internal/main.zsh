#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function restic::internal::main::factory {
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

restic::internal::main::factory

if ! core::exists restic > /dev/null; then  core::install restic; fi