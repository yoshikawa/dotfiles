autoload -U promptinit; promptinit
# zplug
source ~/.zplug/init.zsh
kitty + complete setup zsh | source /dev/stdin

autoload -Uz colors
colors

setopt auto_cd
setopt auto_list
setopt auto_menu

# ls 時の色を設定する
export CLICOLOR=true
export LSCOLORS='exfxcxdxbxGxDxabagacad'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git", from:oh-my-zsh
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# タイプ補完
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

# tmux
function tm() { 
    if [ -n "${1}" ]; then
           tmux attach-session -t ${1} || \
           tmux new-session -s ${1}
    else
           tmux attach-session || \
           tmux new-session
    fi
}
