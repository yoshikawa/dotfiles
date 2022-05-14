if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
  print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (z-shell/zi)…%f"
  command mkdir -p $HOME/.zi
  command git clone https://github.com/z-shell/zi.git $HOME/.zi/bin && \
      print -P "%F{33}▓▒░ %F{34}Installation successful.%F" || \
      print -P "%F{160}▓▒░ The clone has failed.%F"
fi
zi_home="${HOME}/.zi"
source "${zi_home}/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

case ${OSTYPE} in
  darwin*)
    # Mac Setting
    PATH="/usr/local/sbin:$PATH"
    if [[ "$(uname -m)" == arm64 ]]; then
      eval "$(/opt/homebrew/bin/brew shellenv)"
    else
      eval "$(/usr/local/bin/brew shellenv)"
    fi
    ;;
  linux*)
    # LinuxBrew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    ;;
esac

if [ -d ~/.zsh ]; then
  source ~/.zsh/plugins.zsh
  source ~/.zsh/config.zsh
  source ~/.zsh/alias.zsh
  source ~/.zsh/functions.zsh
else
  print "ZSH CONFIGS NOT FOUND: ~/.zsh"
fi

# hub
# eval "$(hub alias -s)"
# Starship
# eval "$(starship init zsh)"
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
