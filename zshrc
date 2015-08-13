export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="norm"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH

export MAIL_SERVER='email-smtp.us-east-1.amazonaws.com'
export MAIL_USERNAME='AKIAJ6NFIS3SHABI3DJQ'
export MAIL_PASSWORD='Ar7iG5RIYCVyxADVDdckG5bGLBPorLlZeP+c8J7P4siy'
export FLASKY_MAIL_SENDER='Flasky Admin <conferencytest@gmail.com>'
export FLASKY_ADMIN='terda12@gmail.com'

alias keithyssh="ssh root@104.236.57.155"
alias school="cd ~/Dropbox/Spring2014"

alias er="cd ~/Desktop/projects && clear && ls"
alias el="cd ~/Desktop/learn && clear && ls"
alias ec="cd ~/Desktop/projects/conf-main && venv"
alias esc="cd ~/Dropbox/Spring2014"
alias eint="cd ~/Desktop/interview-questions && clear && ls"

# Flask shortcut commands
alias venv="source venv/bin/activate"
alias runserver="python manage.py runserver"

cl() {
    cd $1
    ls
}
alias cl=cl

alias pg="psql -U postgres"

acp() {
    git add -A;git commit -m "$1";git push origin master
}
