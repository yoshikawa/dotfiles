autoload -U promptinit; promptinit

ZPLUGIN_HOME=$HOME/.zinit

if [[ ! -f $ZPLUGIN_HOME/bin/zinit.zsh ]]; then
    git clone https://github.com/zdharma/zinit $ZPLUGIN_HOME/bin
fi

source $ZPLUGIN_HOME/bin/zinit.zsh

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# alias
alias la='ls -la'
alias ll='ls -l'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias a='alias'
alias b='brew'
alias c='pbcopy'
alias d='docker'
alias e='vim'
alias f='find . -name'
alias h='histroy'
alias i='docker ps -a'
alias j='jobs'
alias k='kill -9'
alias l='ls -ltr'
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

alias allps='ps aux'
alias rezsh="exec $SHELL -l"
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias ggpe='cd $GOPATH/src/$(ghq list --full-path | grep $GOPATH | cut -d "/" -f 6,7,8 | peco)'
alias hgpe='hub browse $(ghq list | peco | cut -d "/" -f 3,4)'

alias -s gz='tar -xzvf'

# ls 時の色を設定する
export CLICOLOR=true
export LSCOLORS='exfxcxdxbxGxDxabagacad'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

# plugins
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting
zinit light chrissicool/zsh-256color
zinit light paulirish/git-open
zinit light reegnz/jq-zsh-plugin

zinit snippet OMZ::plugins/git/git.plugin.zsh

# Go Lang
if [ -x "`which go`" ]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi
