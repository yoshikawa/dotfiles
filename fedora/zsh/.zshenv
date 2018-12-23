if [ -x "`which go`" ]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi

# alias
alias l='ls -ltr'
alias la='ls -la'
alias ll='ls -l'
alias rezsh="exec $SHELL -l"
alias gogp='cd $GOPATH/src/$(ghq list --full-path | grep $GOPATH | cut -d "/" -f 6,7,8 | peco)'
alias gpe='cd $(ghq root)/$(ghq list --full-path | grep -v $GOPATH | cut -d "/" -f 5,6,7 | peco)'
alias hgp='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias ...='cd ../..'
alias ....='cd ../../..'
