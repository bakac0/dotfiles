alias zshconfig="vim $HOME/.config/zsh/.zshrc"
alias la="ls -a"
alias c="clear"
alias k="kubectl"
alias kns="kubens"
alias kpo="k get po"
alias ksv="k get svc"
alias gmv="go mod tidy && go mod vendor"
alias cls="ls -lha --color=always -F --group-directories-first |awk '{k=0;s=0;for(i=0;i<=8;i++){;k+=((substr(\$1,i+2,1)~/[rwxst]/)*2^(8-i));};j=4;for(i=4;i<=10;i+=3){;s+=((substr(\$1,i,1)~/[stST]/)*j);j/=2;};if(k){;printf(\"%0o%0o \",s,k);};print;}'"


# DOTFILES 
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
