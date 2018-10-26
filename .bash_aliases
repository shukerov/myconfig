# git aliases
alias gs='git status '
alias ga='git add '
alias gd='git diff'
alias gc='git commit'
alias gpu='git push'
alias gcmsg='git commit -m'
alias gpr='git pull --rebase'
alias glog='git log --all --graph --decorate'

# others
alias dos2unix="sed $'s/\r//' -i "
alias tmux="tmux -2"

# ssh aliases
alias taylor='ssh stoyan@thurlow.io'
alias taylorsftp='sftp stoyan@thurlow.io'
alias unix1='ssh sshukero@unix1.csc.calpoly.edu'
alias unix2='ssh sshukero@unix2.csc.calpoly.edu'
alias unix3='ssh sshukero@unix3.csc.calpoly.edu'
alias unix4='ssh sshukero@unix4.csc.calpoly.edu'
alias unix5='ssh sshukero@unix5.csc.calpoly.edu'

# RoR aliases
alias b='bundle'
alias be='bundle exec'
alias bi='bundle install --path=vendor'

# middleman aliases
alias ms='be middleman s'

# dir aliases UBUNTU
alias cs='cd ~/CS'
alias 365='cd ~/CS/365'
alias 349='cd ~/CS/349'
alias 307='cd ~/CS/307'

# dotfiles configuarion aliases
alias config='/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME'
