export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/var/lib/mongodb/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH

alias mongodaemon="sudo mongod --fork --logpath /var/lib/mongodb/mongodlog.log"
alias keithyssh="ssh root@104.236.57.155"
alias music="ncmpcpp"
alias school="cd ~/Dropbox/Spring2014"
alias push="git push origin master"
alias am="git commit -am"
alias proj="cd ~/Desktop/projects && clear && ls"
alias learn="cd ~/Desktop/learn && clear && ls"
alias int="cd ~/Desktop/interview-questions && clear && ls"

KEITHYSERVER='104.131.118.167'
