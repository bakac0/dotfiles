alias zshconfig="vim $HOME/.config/zsh/.zshrc"
alias la="ls -a"
alias c="clear"
alias k="kubectl"
alias kpo="k get po"
alias ksv="k get svc"
alias gmv="go mod tidy && go mod vendor"

# DOTFILES 
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias proto="protoc --go_out=plugins=grpc,paths=source_relative:. "

# K8S
alias k="kubectl"
alias kpo="k get po"
alias ksv="k get svc"
