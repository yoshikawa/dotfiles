#!/bin/bash
ZSH_PATH=$(which zsh)
grep -Fxq "$ZSH_PATH" /etc/shells || sudo bash -c "echo $ZSH_PATH >> /etc/shells"
echo "Changing zsh..."
chsh -s "$ZSH_PATH" $USER