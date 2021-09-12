PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vi'
fi

export BAT_THEME="Solarized (dark)"
export PATH="/home/psx/.local/bin:$PATH"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="mate ~/.zshrc"
set -o vi

cdls() {
        local dir="$1"
        local dir="${dir:=$HOME}"
        if [[ -d "$dir" ]]; then
                cd "$dir" >/dev/null; ls --color=auto
        else
                echo "bash: cdls: $dir: Directory not found"
        fi
}

#My aliases
alias v="nvim"
alias cd="cdls"
alias wifil="nmcli d wifi list"
alias nfetch="neofetch --disable CPU GPU --backend auto --source auto"
alias rec="ffmpeg -video_size 1366x768 -framerate 25 -f x11grab -i :0.0 output.mp4"
alias tu="tmux -u"
alias t="tmux"
alias gc="git commit"
alias gcm="git commit -m 'Commited Changes'"
alias gaa="git add ."
alias gp="git push"
alias proj="~/proj.sh"
alias lzy="lazygit"
alias boon="~/boon"
alias cat="bat"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

autoload bashcompinit
bashcompinit
source /usr/share/bash-completion/completions/pacstall

# stty -ixon
xset r rate 250 50
eval "$(starship init zsh)"

source $HOME/.cargo/env
export DENO_INSTALL="/home/psx/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export PATH=$HOME/.vscvm:$PATH

alias luamake=/home/psx/lua-language-server/3rd/luamake/luamake

