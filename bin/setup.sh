#!/bin/sh

# env
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# ln
sh ${SCRIPT_DIR}/ln.sh

# linuxbrew
sh ${SCRIPT_DIR}/brew.sh

# tpm(tmux plugin manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# zinit
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim