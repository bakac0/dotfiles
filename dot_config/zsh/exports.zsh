# Paths 
path_dirs=(
    "$HOME/bin"
    "$HOME/go/bin" 
    "$HOME/.local/bin"
    "/usr/local/go/bin"
    "$HOME/.fzf/bin"
    "/opt/homebrew/bin"
)

for dir in "${path_dirs[@]}"; do
    if [ -d "$dir" ]; then
        export PATH="$PATH:$dir"
    fi
done

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

# Werf
! { which werf | grep -qsE "^/home/bakac0/.trdl/"; } && [[ -x "$HOME/bin/trdl" ]] && source $("$HOME/bin/trdl" use werf "2" "stable")