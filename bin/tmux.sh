#!/bin/bash

TPM_PATH=~/.tmux/plugins/tpm
TPM_GITHUB_URL=https://github.com/tmux-plugins/tpm.git

# tpm(tmux plugin manager)
if [ ! -d $TPM_PATH ]; then
    mkdir -p $TPM_PATH
    git clone $TPM_GITHUB_URL $TPM_PATH
else
    cd $TPM_PATH && git pull
fi
