alias va='vim ~/.bash_aliases && source ~/.bash_aliases'

alias ic='vim ~/.i3/config'
alias vssh='vim ~/.ssh/config'
alias p8='ping 8.8.8.8'
alias m8='mtr 8.8.8.8'

alias tailpl='ssh -t cms "sudo tail -n 50 -f /var/log/upstart/pancho.log"'
alias tailcms='ssh -t helium "tail -n 10 -f /var/log/cms.*"'

alias snips='cd ~/.vim/plugged/vim-snippets/snippets/javascript && vim javascript.snippets'
alias snipy='vim ~/.vim/bundle/snipmate.vim/snippets/python.snippets'

alias update='bash ~/plays/sys_update.sh'

alias ..='cd ..; ls'
alias lh='ls -lah'
alias nt='vim ~/notas.txt'
alias todo='vim ~/todo.txt'
alias v='vim'
alias r='ranger'
alias t='termllo'
alias py='python'


## Quick access to current projects
alias fd='cd ~/fedex; ls'
alias wm='cd ~/wikimenu; ls'
alias na='cd ~/wikimenu/native; ls'
alias vs='cd ~/versus; ls'
alias ai='cd ~/airmap; ls'
alias wt='cd ~/wti-preloaded; ls'
alias ve='cd ~/venice; ls'
alias bl='cd ~/blog-cms; ls'
alias cms='cd ~/cms; ls'
alias pl='cd ~/planets; ls'
alias fy='cd ~/findyo; ls'
alias nba='cd ~/node-bing-api; ls'
alias gal='cd ~/galaxy; ls'
alias ops='cd ~/plays/ops; ls'


#git
alias gst='git status'
alias gb='git branch'
alias gd='git diff'
alias gl='git log --graph --all --decorate --stat --date=iso'
alias ga.='git add .; git status'
alias gco='git checkout'
alias gcm='git commit -m'


# Reminder (ie. remind 15 'order pizza')
function remind {
  sleep $(($1*60)) && \
  notify-send -u critical -i /usr/share/icons/gnome/32x32/emblems/emblem-urgent.png "$2" &
}


# Ray's finder
function rfind {
  find . -type f \
    -not -path "./git/*" \
    -not -path "./node_modules/*" \
    -not -path "./build/*" \
    | xargs grep $1 | hl '^.*: ' purple
}

