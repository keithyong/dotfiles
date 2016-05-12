export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="norm"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
export PATH=/usr/local/play:$PATH
export PATH=/usr/local/mysql/bin:$PATH

export GOPATH='/Users/keithy/Desktop/projects/go'
export GOROOT='/usr/local/go'

alias keithyssh="ssh root@104.236.57.155"
alias school="cd ~/Dropbox/Spring2016"

alias er="cd ~/Desktop/projects && clear && ls"
alias el="cd ~/Desktop/learn && clear && ls"
alias ec="cd ~/Desktop/projects/conf-main && venv"
alias esc="cd ~/Dropbox/Spring\ 2016"
alias eint="cd ~/Desktop/interview-questions && clear && ls"
alias ego="cd $GOPATH/src/github.com/keithyong"
alias dsk="cd ~/Desktop"

# Flask shortcut commands
alias venv="source venv/bin/activate"
alias runserver="python manage.py runserver"
alias pm="python manage.py"

cl() {
    cd $1
    ls
}
alias cl=cl

alias pg="psql -U postgres"
alias grep="ggrep --color=auto --exclude-dir={.git}"
alias egrep="ggrep -E --color=auto --exclude-dir={.git}"
alias b="cd .. && ls"

acp() {
    git add -A;git commit -m "$1";git push origin master
}

PERL_MB_OPT="--install_base \"/Users/keithy/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/keithy/perl5"; export PERL_MM_OPT;

[[ -s "/Users/keithy/.gvm/scripts/gvm" ]] && source "/Users/keithy/.gvm/scripts/gvm"
