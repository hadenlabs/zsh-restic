#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

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
