autoload -U promptinit; promptinit

export ZPLUG_HOME=~/.zplug
source $ZPLUG_HOME/init.zsh

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

setopt auto_cd
setopt auto_list
setopt auto_menu

# ls 時の色を設定する
export CLICOLOR=true
export LSCOLORS='exfxcxdxbxGxDxabagacad'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

# plugins
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
   printf "Install? [y/N]: "
   if read -q; then
       echo; zplug install
   fi
fi

# Then, source plugins and add commands to $PATH
zplug load

if [ -e "$HOME/.rbenv" ]; then
  eval "$(rbenv init - zsh)"
fi

# Go Lang

if [ -x "`which go`" ]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi


# added by travis gem
[ -f /Users/yoshikawa/.travis/travis.sh ] && source /Users/yoshikawa/.travis/travis.sh
