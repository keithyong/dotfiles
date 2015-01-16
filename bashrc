# @gf3’s Sexy Bash Prompt, inspired by “Extravagant Zsh Prompt”
# Shamelessly copied from https://github.com/gf3/dotfiles
# Screenshot: http://i.imgur.com/s0Blh.png

export TERM=xterm-256color

# Assumes 256 color terminal
# tput setaf sets a foreground colour using ANSI escape.
tput sgr0
MAGENTA=$(tput setaf 9)
ORANGE=$(tput setaf 172)
GREEN=$(tput setaf 190)
PURPLE=$(tput setaf 141)
LIGHT_GRAY=$(tput setaf 250)
WHITE=$(tput setaf 255)
BOLD=$(tput bold)
RESET=$(tput sgr0)

export MAGENTA
export ORANGE
export GREEN
export PURPLE
export LIGHT_GRAY
export WHITE
export BOLD
export RESET

export PS1="\[$BOLD\]\[$ORANGE\]⚔\u\[$RESET\]\[\e[00;37m\]@\w \\$ \[\e[0m\]"

alias tmux="TERM=screen-256color-bce tmux"

