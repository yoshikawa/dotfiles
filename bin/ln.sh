#!/bin/bash -e
DOTPATH=~/dotfiles
IGNORE_PATTERN="^\.(git|docker)"

cd $DOTPATH

for f in .??*; do
    [[ $f =~ $IGNORE_PATTERN ]] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done