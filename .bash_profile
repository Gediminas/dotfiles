export BASH_CONF="~/.bash_profile"

echo \[BASH_CONF = $BASH_CONF\]

## emacs ispell/aspell
#export PATH=$PATH:/usr/local/bin

source /Users/gds/.bashrc


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


export PATH="$HOME/.cargo/bin:$PATH"
