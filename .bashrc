export BASH_CONF="~/.bashrc"
export LC_ALL=en_US.UTF-8
#export EMACS='t'
#export GOROOT=/usr/local/go
#export GOPATH=~/dev/go
#export PATH=$PATH:$GOROOT/bin
#export PATH=$PATH:$GOPATH/bin

export PATH=/usr/local/bin:$PATH:~/scripts

export RUST_SRC_PATH="~/dev/track/rust/src"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'




echo \[BASH_CONF = $BASH_CONF\]
echo \[PATH = $PATH\]
echo -e "\e[37mSample Text\e[0m"

PS1="\w$ "

alias ..b="cd ~/dev/repo/builder"
alias ..s="cd ~/dev/repo/builder/server"
alias ..c="cd ~/dev/repo/builder/client"

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

#alias ggt2="go test -v . | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/''"
#alias ggt="grc go test -v ."

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

