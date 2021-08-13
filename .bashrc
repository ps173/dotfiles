
# Set title to "Terminal"
PROMPT_COMMAND='echo -ne "\033]0;Terminal\007"'

#PS1
PS1="\[$(tput bold)\]\[\033[38;5;47m\]{\[$(tput sgr0)\]\[\033[38;5;51m\]\w\[$(tput sgr0)\]\[\033[38;5;47m\]}\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;27m\]>\[$(tput sgr0)\]\[\033[38;5;61m\]>\[$(tput sgr0)\]"
#bash-powerline
#source ~/.bash-powerline.sh

# powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#source /usr/share/powerline/bindings/bash/powerline.sh

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fortune at start
#./thebat2
#fortune | lolcat

# ALiases
alias news="news -3"
alias v="vim"
alias n="notes.sh"
alias wifil="nmcli d wifi list"

# vim key binds
set -o vi
