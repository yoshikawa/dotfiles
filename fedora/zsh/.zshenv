if [ -x "`which go`" ]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi

# alias
alias l='ls -ltr'
alias la='ls -la'
alias ll='ls -l'
alias rezsh="exec $SHELL -l"
alias gh='cd $(ghq root | peco)'
alias gho='gh-open $(ghq root | peco)'
alias ...='cd ../..'
alias ....='cd ../../..'
