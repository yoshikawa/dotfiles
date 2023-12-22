#!/bin/bash
DOTPATH=~/dotfiles
CONFIG_HOME=~/.config
ZSH_HOME=~/.zsh
IGNORE_PATTERN="^\.(git|docker)"

cd $DOTPATH

for f in .??*; do
    [[ $f =~ $IGNORE_PATTERN ]] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

# sheldon
if [ -d $CONFIG_HOME ]; then
    ln -sfv ${DOTPATH}/sheldon $CONFIG_HOME
else
    mkdir $CONFIG_HOME
    ln -sfv ${DOTPATH}/sheldon $CONFIG_HOME
fi

# sheldon
if [ -d $CONFIG_HOME ]; then
    ln -sfv ${DOTPATH}/helix $CONFIG_HOME
else
    mkdir $CONFIG_HOME
    ln -sfv ${DOTPATH}/helix $CONFIG_HOME
fi