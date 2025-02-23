# Path
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/go/bin"

# history
export HISTSIZE=100000
export SAVEHIST=20000
export HISTFILE=~/.zsh_history
setopt hist_ignore_dups     # do not record an event that was just recorded again
setopt hist_ignore_all_dups # delete an old recorded event if a new event is a duplicate
setopt hist_ignore_space    # do not record an event starting with a space
setopt hist_save_no_dups    # do not write a duplicate event to the history file
setopt inc_append_history   # write to the history file immediately, not when the shell exits
setopt share_history        # share history between terminals

# fix vi plugin conflicting with fzf
export ZVM_INIT_MODE=sourcing

# FZF
if [[ ! "$PATH" == *${HOME}/.fzf/bin* ]]; then
  PATH="${PATH}:${HOME}/.fzf/bin"
fi

# Brew
if [[ ! "$PATH" == */opt/homebrew/bin* ]]; then
  PATH="${PATH}:/opt/homebrew/bin"
fi

# Werf
[[ "$PATH" == *"$HOME/bin:"* ]] || export PATH="$HOME/bin:$PATH"
! { which werf | grep -qsE "^/home/bakac0/.trdl/"; } && [[ -x "$HOME/bin/trdl" ]] && source $("$HOME/bin/trdl" use werf "2" "stable")

if [[ ! "$PATH" == */opt/nvim-linux64/bin* ]]; then
  PATH="${PATH}:/opt/nvim-linux64/bin"
fi

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Kubernates
source <(kubectl completion zsh | sed 's#${requestComp} 2>/dev/null#${requestComp} 2>/dev/null | head -n -1 | fzf  --multi=0 #g')
