#!/bin/sh

# env
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# ln
sh ${SCRIPT_DIR}/ln.sh

# homebrew
sh ${SCRIPT_DIR}/brew.sh

# zinit
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim