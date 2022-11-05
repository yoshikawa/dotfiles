#!/bin/bash -eu

TPM_PATH=~/.tmux/plugins/tpm
TPM_GITHUB_URL=https://github.com/tmux-plugins/tpm.git
ZI_PATH=~/.zi/bin
ZI_GITHUB_URL=https://github.com/z-shell/zi.git

# env
SCRIPT_DIR=$(
    cd $(dirname $0)
    pwd
)

# homebrew
${SCRIPT_DIR}/brew.sh

# switch zsh
${SCRIPT_DIR}/switch-zsh.sh

# tpm(tmux plugin manager)
if [ ! -d $TPM_PATH ]; then
    mkdir -p $TPM_PATH
    git clone $TPM_GITHUB_URL $TPM_PATH
else
    cd $TPM_PATH && git pull
fi

# zi
if [ ! -d $ZI_PATH ]; then
    mkdir -p $ZI_PATH
    git clone $ZI_GITHUB_URL $ZI_PATH
else
    cd $ZI_PATH && git pull
fi

# symbolic link
${SCRIPT_DIR}/ln.sh
