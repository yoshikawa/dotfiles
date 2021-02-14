#!/bin/bash
DOTFILES="$(cd $(dirname $0); pwd)/.."

for file in `ls $DOTFILES -1AF | grep -v / | grep '^\.'`; do
  ln -sfv $(echo $DOTFILES/$file | xargs readlink -f) ~/${file}
done