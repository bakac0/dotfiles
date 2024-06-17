# Path
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/go/bin"

# history
export HISTSIZE=100000
export SAVEHIST=20000

# fix vi plugin conflicting with fzf
export ZVM_INIT_MODE=sourcing

# FZF
if [[ ! "$PATH" == */home/bakac0/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/bakac0/.fzf/bin"
fi

# Werf
[[ "$PATH" == *"$HOME/bin:"* ]] || export PATH="$HOME/bin:$PATH"
! { which werf | grep -qsE "^/home/bakac0/.trdl/"; } && [[ -x "$HOME/bin/trdl" ]] && source $("$HOME/bin/trdl" use werf "2" "stable")

# Kubernates
source <(kubectl completion zsh | sed 's#${requestComp} 2>/dev/null#${requestComp} 2>/dev/null | head -n -1 | fzf  --multi=0 #g')
