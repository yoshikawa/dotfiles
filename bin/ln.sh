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

# ZSH
if [ -d $ZSH_HOME ]; then
    ln -sfv ${DOTPATH}/zsh/* $ZSH_HOME
else
    mkdir $ZSH_HOME
    ln -sfv ${DOTPATH}/zsh/* $ZSH_HOME
fi

# NeoVim
if [ -d $CONFIG_HOME ]; then
    ln -sfv ${DOTPATH}/nvim $CONFIG_HOME
else
    mkdir $CONFIG_HOME
    ln -sfv ${DOTPATH}/nvim $CONFIG_HOME
fi
