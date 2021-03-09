#!/bin/bash
DOTFILES="$(cd $(dirname $0); pwd)/.."

for file in `ls -1AF $DOTFILES | grep -v / | grep '^\.'`; do
  ln -sfv $(echo $DOTFILES/$file | xargs readlink -f) ~/${file}
done