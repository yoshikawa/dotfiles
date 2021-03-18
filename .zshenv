#!/usr/local/bin/zsh

# language
export LANG=ja_JP.UTF-8
export XDG_CONFIG_HOME=~/.config
# editor
export EDITOR=nvim
export VISUAL=nvim
export MANPAGER='nvim -c MANPAGER -'

if [ -z $TMUX ]; then
  export PATH="${HOME}/local/bin:${PATH}"
fi
