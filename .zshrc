autoload -Uz promptinit compinit;
promptinit;
compinit;

ZPLUGIN_HOME=$HOME/.zinit
if [[ ! -f $ZPLUGIN_HOME/bin/zinit.zsh ]]; then
    git clone https://github.com/zdharma/zinit $ZPLUGIN_HOME/bin
fi
source $ZPLUGIN_HOME/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

case ${OSTYPE} in
  darwin*)
    # Mac Setting
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
zinit snippet 'OMZ::plugins/git/git.plugin.zsh'
zinit snippet 'OMZ::lib/clipboard.zsh'
zinit snippet 'OMZ::lib/completion.zsh'
zinit snippet 'OMZ::lib/compfix.zsh'

zinit light 'zsh-users/zsh-autosuggestions'
zinit light 'zsh-users/zsh-completions'
zinit light 'zdharma/fast-syntax-highlighting'
zinit light 'chrissicool/zsh-256color'
zinit light 'paulirish/git-open'
zinit light 'reegnz/jq-zsh-plugin'
zinit light 'b4b4r07/emoji-cli'
zinit light 'mollifier/anyframe'
zinit light 'b4b4r07/enhancd'

zinit load 'junegunn/fzf-bin'
zinit load 'zdharma/history-search-multi-word'
