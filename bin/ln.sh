#!/bin/bash -e
DOTPATH=~/dotfiles
XDG_CONFIG_HOME=~/.config
IGNORE_PATTERN="^\.(git|docker)"

cd $DOTPATH

for f in .??*; do
    [[ $f =~ $IGNORE_PATTERN ]] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

# NeoVim
ln -sfv ${DOTPATH}/nvim $XDG_CONFIG_HOME