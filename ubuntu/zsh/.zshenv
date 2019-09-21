
# alias
alias ls='ls --color=auto'
alias l='ls -ltr'
alias la='ls -la'
alias ll='ls -l'
alias rezsh="exec $SHELL -l"
alias gogp='cd $GOPATH/src/$(ghq list --full-path | grep $GOPATH | cut -d "/" -f 6,7,8 | peco)'
alias gpe='cd $(ghq root)/$(ghq list --full-path | grep -v $GOPATH | cut -d "/" -f 5,6,7 | peco)'
alias hgp='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
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

export GO111MODULE=off
if [ -z $TMUX ]; then
  export PATH="${HOME}/local/bin:${PATH}"
fi
