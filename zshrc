export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/var/lib/mongodb/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
export PATH=/lib/python2.7/site-packages:$PATH
export PYTHONPATH=/lib/python2.7/site-packages

alias mongodaemon="sudo mongod --fork --logpath /var/lib/mongodb/mongodlog.log"
alias keithyssh="ssh root@104.236.57.155"
alias shawnssh="ssh root@104.236.115.243"
alias fabssh="ssh keith@104.131.104.158"
alias school="cd ~/Dropbox/Spring2014"

alias er="cd ~/Desktop/projects && clear && ls"
alias el="cd ~/Desktop/learn && clear && ls"
alias ec="cd ~/Desktop/projects/pyramus;mvim .;nodemon app.js"
alias esc="cd ~/Dropbox/Spring2014"
alias eint="cd ~/Desktop/interview-questions && clear && ls"

alias pg="psql -U postgres"

acp() {
    git add -A;git commit -m "$1";git push origin master
}

KEITHYSERVER='104.131.118.167'
