#!/usr/local/bin/zsh

# language
export LANG=ja_JP.UTF-8
export XDG_CONFIG_HOME=~/.config
# editor
export EDITOR=nvim
export VISUAL=nvim
export MANPAGER='nvim -c MANPAGER -'
# ls color
export CLICOLOR=true
export LSCOLORS='exfxcxdxbxGxDxabagacad'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
# Go Lang
if [ -x "`which go`" ]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi
# TMUX
if [ -z $TMUX ]; then
  export PATH="${HOME}/local/bin:${PATH}"
fi

# alias
alias cat='bat'
alias ls='exa'
alias ll='ls -alF'
alias la='ls -a'
alias lt='ls -T'
alias lsd='exa -D'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias a='alias'
alias b='brew'
alias c='pbcopy'
alias d='docker'
alias e='vim'
alias f='fd'
alias h='histroy'
alias i='docker ps -a'
alias j='jobs'
alias k='kill -9'
alias l='ls -alF'
alias m='make'
alias n='npm'
alias o='open'
alias p='pwd'
alias q='kubectl'
#alias r=''
alias s='ssh'
alias t='tmux'
alias u='cd ..'
alias v='vim'
#alias x=''
alias y='yarn'
alias z='zsh'
# editor
alias edit='code'
# NeoVim
alias vim=nvim
# fzf
alias pj='cd $(ghq list -p | fzf)'
alias gopn='hub browse $(ghq list | peco | cut -d "/" -f 2,3,4)'
alias dotfiles="cd ~/dotfiles"
alias dc='docker-compose'
alias allps='ps aux'
alias rezsh="exec $SHELL -l"
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias -s gz='tar -xzvf'

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history
setopt hist_no_store
setopt hist_expand