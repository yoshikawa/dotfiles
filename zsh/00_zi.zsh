autoload -Uz compinit && compinit
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