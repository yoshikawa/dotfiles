#!/bin/bash

TPMTPATH=~/.tmux/plugins/tpm
TPM_GITHUB_URL=https://github.com/tmux-plugins/tpm
ZINITPATH=~/.zinit/bin
ZINIT_GITHUB_URL=https://github.com/zdharma/zinit.git

# env
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# homebrew
sh ${SCRIPT_DIR}/brew.sh

# tpm(tmux plugin manager)
if [ -d $TPMTPATH ]; then
    cd $TPMTPATH && git pull
else
    git clone ${TPM_GITHUB_URL}.git $TPMTPATH
fi

# zinit
if [ -d $ZINITTPATH ]; then
    cd $ZINITTPATH && git pull
else
    git clone ${ZINIT_GITHUB_URL}.git $ZINITTPATH
fi

# symbolic link
sh ${SCRIPT_DIR}/ln.sh

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim