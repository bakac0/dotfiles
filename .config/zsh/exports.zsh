# Path
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/go/bin"

# history
export HISTSIZE=100000
export SAVEHIST=20000
export HISTFILE="$HOME/.cache/zsh/history"
setopt hist_ignore_dups     # do not record an event that was just recorded again
setopt hist_ignore_all_dups # delete an old recorded event if a new event is a duplicate
setopt hist_ignore_space    # do not record an event starting with a space
setopt hist_save_no_dups    # do not write a duplicate event to the history file
setopt inc_append_history   # write to the history file immediately, not when the shell exits
setopt share_history        # share history between terminals

# fix vi plugin conflicting with fzf
export ZVM_INIT_MODE=sourcing

# FZF
if [[ ! "$PATH" == */home/bakac0/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/bakac0/.fzf/bin"
fi

# Werf
! { which werf | grep -qsE "^/home/bakac0/.trdl/"; } && [[ -x "$HOME/bin/trdl" ]] && source $("$HOME/bin/trdl" use werf "1.2" "stable")

# Kubernates
source <(kubectl completion zsh | sed 's#${requestComp} 2>/dev/null#${requestComp} 2>/dev/null | head -n -1 | fzf  --multi=0 #g')
