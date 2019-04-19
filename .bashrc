export BASH_CONF="~/.bashrc"
export LC_ALL=en_US.UTF-8
#export EMACS='t'
export GOROOT=/usr/local/go
export GOPATH=~/dev/go
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

PROMPT_DIRTRIM=3

PS1="\w>"

alias ..b="cd /Files/Dev/repo/builder"
alias ..s="cd /Files/Dev/repo/builder/server"
alias ..c="cd /Files/Dev/repo/builder/client"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."
alias ............="cd ../../../../../../../../../../.."
alias .............="cd ../../../../../../../../../../../.."

alias ggt2="go test -v . | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/''"
alias ggt="grc go test -v ."

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

