export LC_ALL=en_US.UTF-8
#export EMACS='t'
#export GOROOT=/usr/local/go
#export GOPATH=~/dev/go
#export PATH=$PATH:$GOROOT/bin
#export PATH=$PATH:$GOPATH/bin

ZSH=~/.oh-my-zsh/oh-my-zsh.sh
source ~/.oh-my-zsh/templates/zshrc.zsh-template

#export PATH=/usr/local/bin:$PATH:~/scripts

# Enable Vim mode in ZSH
bindkey -v


#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

#alias ls='ls -GFh'




#echo \[BASH_CONF = $BASH_CONF\]
#echo \[PATH = $PATH\]
#echo -e "\e[37mSample Text\e[0m"

#PS1="\w$ "

alias ..r="cd ~/dev/repo"
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

#bind '"\e[A":history-search-backward'
#bind '"\e[B":history-search-forward'

PS1+='${VIMODE}'
#   '$' for normal insert mode
#   a big red 'I' for command mode - to me this is 'NOT insert' because red
function zle-line-init zle-keymap-select {
    DOLLAR='%B%F{green}$%f%b '
    GIANT_I='%B%F{red}I%f%b '
    VIMODE="${${KEYMAP/vicmd/$GIANT_I}/(main|viins)/$DOLLAR}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
