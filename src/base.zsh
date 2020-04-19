#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

cat > "${RESTIC_FILE_EXCLUDE}" << EOF
    ._*
.DS_Store
*.pyc
*.orig
*.retry
*.tmp
*.egg
.eggs
*.egg-inf
.pytest_cache
.hypothesis
.mypy_cache
.hypothesis
.lib-cov
__pycache__
env.back
venv.back
coverage
node_modules
jspm_packages
typings
.npm
.vagrant
.wercker
.eggs
eggs
*.egg-info
.pytest_cache
.hypothesis
docs/_build/
htmlcov
.mypy_cache
.hypothesis
wheels
.lib-cov
bower_components
.venv
env.back
venv.back
.terraform
.next
.nuxt
.cache
.grunt
.vuepress/dist
.fusebox
.dynamodb

EOF

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