#!/bin/bash

TPM_PATH=~/.tmux/plugins/tpm
TPM_GITHUB_URL=https://github.com/tmux-plugins/tpm
ZI_PATH=~/.zi/bin
ZI_GITHUB_URL=https://github.com/z-shell/zi

# env
SCRIPT_DIR=$(
    cd $(dirname $0)
    pwd
)

# homebrew
${SCRIPT_DIR}/brew.sh

# tpm(tmux plugin manager)
if [ -d $TPM_TPATH ]; then
    cd $TPM_TPATH
    if git pull; then
        exit 0
    fi
else
    git clone ${TPM_GITHUB_URL}.git $TPM_PATH
fi

# zinit
if [ -d $ZINIT_PATH ]; then
    cd $ZINIT_PATH
    if git pull; then
        exit 0
    fi
else
    zi_home="${HOME}/.zi" && mkdir -p $zi_home
    git clone ${ZI_GITHUB_URL} "${zi_home}/bin"
fi

# symbolic link
${SCRIPT_DIR}/ln.sh
