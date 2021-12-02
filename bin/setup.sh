#!/bin/bash

TPM_PATH=~/.tmux/plugins/tpm
TPM_GITHUB_URL=https://github.com/tmux-plugins/tpm
ZINIT_PATH=~/.zinit/bin
ZINIT_GITHUB_URL=https://github.com/zdharma-continuum/zinit

# env
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# homebrew
${SCRIPT_DIR}/brew.sh

# tpm(tmux plugin manager)
if [ -d $TPM_TPATH ]; then
    cd $TPM_TPATH && git pull
else
    git clone ${TPM_GITHUB_URL}.git $TPM_PATH
fi

# zinit
if [ -d $ZINIT_PATH ]; then
    cd $ZINIT_PATH && git pull
else
    git clone ${ZINIT_GITHUB_URL}.git $ZINIT_PATH
fi

# symbolic link
${SCRIPT_DIR}/ln.sh
