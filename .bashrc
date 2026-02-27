# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
PS1='[\u@\h \W]\$ '
tput smkx
alias scrot='scrot "$HOME/Images/Screenshots/%Y-%m-%d_%H%M%S.png"'
export PATH="$HOME/.local/bin:$PATH"
eval "$(starship init bash)"

export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia

weather() {
    # If no argument is passed, use "YourCity", otherwise use the argument
    local location="${1:-Birmingham,UK}"
    curl -s "wttr.in/${location}?0"
}
