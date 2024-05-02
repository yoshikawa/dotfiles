#!/bin/bash
DOTPATH=~/dotfiles
CONFIG_HOME=~/.config
LOCAL_BIN=~/.local/bin
ZSH_HOME=~/.zsh
IGNORE_PATTERN="^\.(git|docker)"

cd $DOTPATH

for f in .??*; do
    [[ $f =~ $IGNORE_PATTERN ]] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

# install binary
mkdir -p $LOCAL_BIN
stow -d "$DOTPATH"/bin -t ~/.local/bin scripts

# sheldon
if [ -d $CONFIG_HOME ]; then
    ln -sfv ${DOTPATH}/sheldon $CONFIG_HOME
else
    mkdir $CONFIG_HOME
    ln -sfv ${DOTPATH}/sheldon $CONFIG_HOME
fi

# helix
if [ -d $CONFIG_HOME ]; then
    ln -sfv ${DOTPATH}/helix $CONFIG_HOME
else
    mkdir $CONFIG_HOME
    ln -sfv ${DOTPATH}/helix $CONFIG_HOME
fi

# yazi
if [ -d $CONFIG_HOME ]; then
    ln -sfv ${DOTPATH}/yazi $CONFIG_HOME
else
    mkdir $CONFIG_HOME
    ln -sfv ${DOTPATH}/yazi $CONFIG_HOME
fi

# zellij
if [ -d $CONFIG_HOME ]; then
    ln -sfv ${DOTPATH}/zellij $CONFIG_HOME
else
    mkdir $CONFIG_HOME
    ln -sfv ${DOTPATH}/zellij $CONFIG_HOME
fi
