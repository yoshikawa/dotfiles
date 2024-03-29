# language
export LANG=ja_JP.UTF-8
export KCODE=u
export XDG_CONFIG_HOME=~/.config
# editor
export EDITOR=hx
export VISUAL=hx
export MANPAGER='hx -c MANPAGER -'
# ls color
export CLICOLOR=true
export LSCOLORS='exfxcxdxbxGxDxabagacad'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
# GPG Key
if [ -z $TTY ]; then
  export GPG_TTY=$TTY
fi
# Go Lang
if [ -x "$(which go)" ]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi
# TMUX
if [ -z $TMUX ]; then
  export PATH="${HOME}/local/bin:${PATH}"
fi
