#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export RESTIC_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export RESTIC_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm branch:develop"
export RESTIC_PACKAGE_NAME=restic
export RESTIC_PATH_CONFIG="${HOME}/.config/restic"
export RESTIC_PATH_TMP="${HOME}/tmp"

[ -z "${RESTIC_PASSWORD_COMMAND}" ] && unset RESTIC_PASSWORD_COMMAND
[ -z "${RESTIC_FILE_EXCLUDE}" ] && export RESTIC_FILE_EXCLUDE="${HOME}/tmp/restic_excludes"
[ -z "${RESTIC_REPOSITORY}" ] && export RESTIC_REPOSITORY=/Volumes/MrRobot/Backup
[ -z "${RESTIC_PATHS_BACKUP}" ] && export RESTIC_PATHS_BACKUP=(
        "${HOME}/.ssh"
        "${HOME}/Documents"
    )

[ ! -e "${RESTIC_PATH_CONFIG}" ] && mkdir -p "${RESTIC_PATH_CONFIG}"
[ ! -e "${RESTIC_PATH_TMP}" ] && mkdir -p "${RESTIC_PATH_TMP}"
[ ! -e "${RESTIC_FILE_EXCLUDE}" ] && touch "${RESTIC_FILE_EXCLUDE}"
[ ! -e "${RESTIC_PASSWORD_FILE}" ] && touch "${RESTIC_PASSWORD_FILE}"

[ -n "${RESTIC_PASSWORD}" ] && echo "${RESTIC_PASSWORD}" > "${RESTIC_PASSWORD_FILE}"

cat > "${RESTIC_FILE_EXCLUDE}" << EOF

# Created by https://www.gitignore.io/api/linux,windows,osx,vim,emacs,compression,compressed,vagrant,node,python,java,terraform,php
# Edit at https://www.gitignore.io/?templates=linux,windows,osx,vim,emacs,compression,compressed,vagrant,node,python,java,terraform,php

### Compressed ###
*.7z
*.deb
*.gz
*.pkg
*.rar
*.rpm
*.sit
*.sitx
*.tar
*.zip
*.zipx
*.tgz

### Compression ###

### From https://en.wikipedia.org/wiki/List_of_archive_formats

## Compression only
# An open source, patent- and royalty-free compression format. The compression algorithm is a Burrows-Wheeler transform followed by a move-to-front transform and finally Huffman coding
*.bz2
# Old compressor for QNX4 OS. The compression algorithm is a modified LZSS, with an adaptive Huffman coding.
*.F
# GNU Zip, the primary compression format used by Unix-like systems. The compression algorithm is DEFLATE.
# An alternate LZMA algorithm implementation, with support for checksums and ident bytes.
*.lz
# The LZMA compression algorithm as used by 7-Zip
*.lzma
# An implementation of the LZO data compression algorithm
*.lzo
# A compression program designed to do particularly well on very large files containing long distance redundancy.
*.rz
# Windows compress/decompress- Linux and Mac OS X decompress only 	A compression program designed to do high compression on SF2 files (SoundFont)
*.sfark
# A compression format invented by Google and open-sourced in 2011. Snappy aims for very high speeds, reasonable compression, and maximum stability rather than maximum compression or compatibility with any other compression library.
*.sz
# Squeeze: A program which compressed files. A file which was "squeezed" had the middle initial of the name changed to "Q", so that a squeezed text file would end with .TQT, a squeezed executable would end with .CQM or .EQE. Typically used with .LBR archives, either by storing the squeezed files in the archive, or by storing the files decompressed and then compressing the archive, which would have a name ending in ".LQR".
*.?Q?
# A compression program written by Steven Greenberg implementing the LZW algorithm. For several years in the CP/M world when no implementation was available of ARC, CRUNCHed files stored in .LBR archives were very popular. CRUNCH's implementation of LZW had a somewhat unique feature of modifying and occasionally clearing the code table in memory when it became full, resulting in a few percent better compression on many files.
*.?Z?
# A compression format using LZMA2 to yield very high compression ratios.
*.xz
# The traditional Huffman coding compression format.
*.z
# The traditional LZW compression format.
*.Z
# Joke compression program, actually increasing file size
*.infl
# Compression format(s) used by some DOS and Windows install programs. MS-DOS includes expand.exe to decompress its install files. The compressed files are created with a matching compress.exe command. The compression algorithm is LZSS.
*.??_


### Emacs ###
# -*- mode: gitignore; -*-
*~
\#*\#
/.emacs.desktop
/.emacs.desktop.lock
*.elc
auto-save-list
tramp
.\#*

# Org-mode
.org-id-locations
*_archive

# flymake-mode
*_flymake.*

# eshell files
/eshell/history
/eshell/lastdir

# elpa packages
/elpa/

# reftex files
*.rel

# AUCTeX auto folder
/auto/

# cask packages
.cask/
dist/

# Flycheck
flycheck_*.el

# server auth directory
/server/

# projectiles files
.projectile

# directory configuration
.dir-locals.el

# network security
/network-security.data


### Java ###
# Compiled class file
*.class

# Log file
*.log

# BlueJ files
*.ctxt

# Mobile Tools for Java (J2ME)
.mtj.tmp/

# Package Files #
*.jar
*.war
*.nar
*.ear
*.tar.gz

# virtual machine crash logs, see http://www.java.com/en/download/help/error_hotspot.xml
hs_err_pid*

### Linux ###

# temporary files which can be created if a process still has a handle open of a deleted file
.fuse_hidden*

# KDE directory preferences
.directory

# Linux trash folder which might appear on any partition or disk
.Trash-*

# .nfs files are created when an open file is removed but is still being accessed
.nfs*

### Node ###
# Logs
logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*

# Diagnostic reports (https://nodejs.org/api/report.html)
report.[0-9]*.[0-9]*.[0-9]*.[0-9]*.json

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Directory for instrumented libs generated by jscoverage/JSCover
lib-cov

# Coverage directory used by tools like istanbul
coverage
*.lcov

# nyc test coverage
.nyc_output

# Grunt intermediate storage (https://gruntjs.com/creating-plugins#storing-task-files)
.grunt

# Bower dependency directory (https://bower.io/)
bower_components

# node-waf configuration
.lock-wscript

# Compiled binary addons (https://nodejs.org/api/addons.html)
build/Release

# Dependency directories
node_modules/
jspm_packages/

# TypeScript v1 declaration files
typings/

# TypeScript cache
*.tsbuildinfo

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env
.env.test

# parcel-bundler cache (https://parceljs.org/)
.cache

# next.js build output
.next

# nuxt.js build output
.nuxt

# rollup.js default build output

# Uncomment the public line if your project uses Gatsby
# https://nextjs.org/blog/next-9-1#public-directory-support
# https://create-react-app.dev/docs/using-the-public-folder/#docsNav
# public

# Storybook build outputs
.out
.storybook-out

# vuepress build output
.vuepress/dist

# Serverless directories
.serverless/

# FuseBox cache
.fusebox/

# DynamoDB Local files
.dynamodb/

# Temporary folders
tmp/
temp/

### OSX ###
# General
.DS_Store
.AppleDouble
.LSOverride

# Icon must end with two \r
Icon

# Thumbnails
._*

# Files that might appear in the root of a volume
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.com.apple.timemachine.donotpresent

# Directories potentially created on remote AFP share
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk

#!! ERROR: php is undefined. Use list command to see defined gitignore types !!#

### Python ###
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*py.class

# C extensions
*.so

# Distribution / packaging
.Python
build/
develop-eggs/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
pip-wheel-metadata/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST

# PyInstaller
#  Usually these files are written by a python script from a template
#  before PyInstaller builds the exe, so as to inject date/other infos into it.
*.manifest
*.spec

# Installer logs
pip-log.txt
pip-delete-this-directory.txt

# Unit test / coverage reports
htmlcov/
.tox/
.nox/
.coverage
.coverage.*
nosetests.xml
coverage.xml
*.cover
.hypothesis/
.pytest_cache/

# Translations
*.mo
*.pot

# Scrapy stuff:
.scrapy

# Sphinx documentation
docs/_build/

# PyBuilder
target/

# pyenv
.python-version

# pipenv
#   According to pypa/pipenv#598, it is recommended to include Pipfile.lock in version control.
#   However, in case of collaboration, if having platform-specific dependencies or dependencies
#   having no cross-platform support, pipenv may install dependencies that don't work, or not
#   install all needed dependencies.
#Pipfile.lock

# celery beat schedule file
celerybeat-schedule

# SageMath parsed files
*.sage.py

# Spyder project settings
.spyderproject
.spyproject

# Rope project settings
.ropeproject

# Mr Developer
.mr.developer.cfg
.project
.pydevproject

# mkdocs documentation
/site

# mypy
.mypy_cache/
.dmypy.json
dmypy.json

# Pyre type checker
.pyre/

### Terraform ###
# Local .terraform directories
**/.terraform/*

# .tfstate files
*.tfstate
*.tfstate.*

# Crash log files
crash.log

# Ignore any .tfvars files that are generated automatically for each Terraform run. Most
# .tfvars files are managed as part of configuration and so should be included in
# version control.
#
# example.tfvars

# Ignore override files as they are usually used to override resources locally and so
# are not checked in
override.tf
override.tf.json
*_override.tf
*_override.tf.json

# Include override files you do wish to add to version control using negated pattern
# !example_override.tf

# Include tfplan files to ignore the plan output of command: terraform plan -out=tfplan
# example: *tfplan*

### Vagrant ###
# General
.vagrant/*

# Log files (if you are creating logs in debug mode, uncomment this)
# *.log

### Vagrant Patch ###
*.box

### Vim ###
# Swap
[._]*.s[a-v][a-z]
[._]*.sw[a-p]
[._]s[a-rt-v][a-z]
[._]ss[a-gi-z]
[._]sw[a-p]

# Session
Session.vim
Sessionx.vim

# Temporary
.netrwhist

# Auto-generated tag files
tags

# Persistent undo
[._]*.un~

# Coc configuration directory
.vim

### Windows ###
# Windows thumbnail cache files
Thumbs.db
Thumbs.db:encryptable
ehthumbs.db
ehthumbs_vista.db

# Dump file
*.stackdump

# Folder config file
[Dd]esktop.ini

# Recycle Bin used on file shares
$RECYCLE.BIN/

# Windows Installer files
*.cab
*.msi
*.msix
*.msm
*.msp

# Windows shortcuts
*.lnk

# End of https://www.gitignore.io/api/linux,windows,osx,vim,emacs,compression,compressed,vagrant,node,python,java,terraform,php

EOF