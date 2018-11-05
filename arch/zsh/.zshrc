autoload -U promptinit; promptinit

source /usr/share/zsh/scripts/zplug/init.zsh

# alias
alias l='ls -ltr'
alias la='ls -la'
alias ll='ls -l'
alias rezsh="exec $SHELL -l"
alias ge='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias ...='cd ../..'
alias ....='cd ../../..'

setopt auto_cd
setopt auto_list
setopt auto_menu

export CLICOLOR=true
export LSCOLORS='exfxcxdxbxGxDxabagacad'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'


zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git", from:oh-my-zsh
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

if [ -x "`which go`" ]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
  export GOBIN=$GOPATH/bin

fi
