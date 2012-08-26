# .bashrc

#Some colors
txtylw='\e[0;33m' # Yellow
txtcyn='\e[0;36m' # Cyan
bldred='\e[1;31m' # Red
txtrst='\e[0m'    # Text Reset

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

echoer () {
    printf "\n$txtcyn$USER at $txtylw${PWD/$HOME/~} $bldred$(vcprompt) \n$txtrst"
}
PROMPT_COMMAND=echoer
PS1='→ ' 
