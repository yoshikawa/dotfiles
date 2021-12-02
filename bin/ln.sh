#!/bin/bash -e
DOTPATH=~/dotfiles
CONFIG_HOME=~/.config
IGNORE_PATTERN="^\.(git|docker)"

cd $DOTPATH

for f in .??*; do
    [[ $f =~ $IGNORE_PATTERN ]] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

# NeoVim
if [ -d $CONFIG_HOME ]; then
    ln -sfv ${DOTPATH}/nvim $CONFIG_HOME
else
    mkdir $CONFIG_HOME
    ln -sfv ${DOTPATH}/nvim $CONFIG_HOME
fi
