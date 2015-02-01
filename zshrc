export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/var/lib/mongodb/bin:$PATH

alias mongodaemon="sudo mongod --fork --logpath /var/lib/mongodb/mongodlog.log"
alias keithyssh="ssh -p 4444 keithy@104.131.118.167"
alias music="ncmpcpp"

KEITHYSERVER='104.131.118.167'
