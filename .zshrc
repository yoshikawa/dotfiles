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

# hub
eval "$(hub alias -s)"
# Starship
eval "$(starship init zsh)"

# plugins
zi snippet 'OMZ::plugins/git/git.plugin.zsh'
zi snippet 'OMZ::lib/clipboard.zsh'
zi snippet 'OMZ::lib/completion.zsh'
zi snippet 'OMZ::lib/compfix.zsh'

zi light 'zsh-users/zsh-autosuggestions'
zi light 'zsh-users/zsh-completions'
zi light 'zdharma-continuum/fast-syntax-highlighting'
zi light 'chrissicool/zsh-256color'
zi light 'paulirish/git-open'
zi light 'reegnz/jq-zsh-plugin'
zi light 'b4b4r07/emoji-cli'
zi light 'mollifier/anyframe'
zi light 'b4b4r07/enhancd'

zi load 'junegunn/fzf-bin'
zi load 'zdharma-continuum/history-search-multi-word'

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
