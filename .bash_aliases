alias va='vim ~/.bash_aliases && source ~/.bash_aliases'

alias p8='ping 8.8.8.8'

alias ll='ls -alF'
alias la='ls -la'
alias l='ls -l'
alias ..='cd ..; ls'

alias ntl='sudo netstat -tulpan | grep LISTEN'

#change the terminal window size
#Change terminal window size
alias s1="wmctrl -r ':ACTIVE:' -e 0,-1,-1,700,850"
alias s2="wmctrl -r ':ACTIVE:' -e 0,-1,-1,1600,300"
alias s3="wmctrl -r ':ACTIVE:' -e 0,-1,-1,1070,850"


#git
alias gst='git status'
alias gb='git branch'
alias gd='git diff'
alias gl='git log'
alias ga.='git add .; git status'
alias gco='git checkout'
alias gcm='git commit -m'
