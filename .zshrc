export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# alias
alias l='ls -ltr'
alias la='ls -la'
alias ll='ls -l'
alias rezsh="exec $SHELL -l"

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
zplug "ginfuru/zsh-blackrain", from:github, as:theme
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
    export GOROOT=$HOME/go
    export PATH=$PATH:$GOROOT/bin
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

