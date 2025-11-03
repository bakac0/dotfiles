# FZF
eval "$(fzf --zsh)"

# WERF
which werf &>/dev/null && source <(werf completion --shell=zsh 2>/dev/null)