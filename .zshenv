#!/usr/local/bin/zsh

# language
export LANG=ja_JP.UTF-8

# editor
export EDITOR=vim
export VISUAL=vim
export MANPAGER='vim -c MANPAGER -'

if [ -z $TMUX ]; then
  export PATH="${HOME}/local/bin:${PATH}"
fi
