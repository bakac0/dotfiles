# enable powerlevel10k instant prompt, keep at the top of the file
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# tab autocompletions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

unsetopt autocd
unsetopt beep

# change word selection to exclude slashes
autoload -U select-word-style
select-word-style bash

# Load configs
[[ ! -f ~/.config/zsh/aliases.zsh ]] || source ~/.config/zsh/aliases.zsh
[[ ! -f ~/.config/zsh/exports.zsh ]] || source ~/.config/zsh/exports.zsh
[[ ! -f ~/.config/zsh/completions.zsh ]] || source ~/.config/zsh/completions.zsh

# Load plugins
zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  (
    source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh
    antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
  )
fi
source ${zsh_plugins}.zsh

# Theme config
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
