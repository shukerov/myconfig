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
alias ll="ls -lah"
alias dos2unix="sed $'s/\r//' -i "
alias tmux="tmux -2"

# ssh aliases
alias taylor='ssh stoyan@home.thurlow.io'
alias taylorsftp='sftp stoyan@home.thurlow.io'
alias unix1='ssh sshukero@unix1.csc.calpoly.edu'
alias unix2='ssh sshukero@unix2.csc.calpoly.edu'
alias unix3='ssh sshukero@unix3.csc.calpoly.edu'
alias unix4='ssh sshukero@unix4.csc.calpoly.edu'
alias unix5='ssh sshukero@unix5.csc.calpoly.edu'

# Docker aliases
alias dc='docker-compose'

# RoR aliases
alias b='bundle'
alias be='bundle exec'
alias bi='bundle install --path=vendor'

# middleman aliases
alias ms='be middleman s'

# dir aliases
alias down='cd ~/downloads'
alias dev='cd ~/development'
alias blog='cd ~/development/blog'
# alias senior='cd ~/development/senior_proj'
alias bee='cd ~/development/beesbot'
alias bay='cd ~/development/beesbot/bayphoto'
alias cs='cd ~/CS'
alias 202='cd ~/CS/202'
alias 300='cd ~/CS/300'
alias 307='cd ~/CS/307'
alias 315='cd ~/CS/315'
alias 349='cd ~/CS/349'
alias 357='cd ~/CS/357'
alias 365='cd ~/CS/365'
alias 366='cd ~/CS/366'
alias 430='cd ~/CS/430'
alias 431='cd ~/CS/431'
alias 453='cd ~/CS/453'
alias 464='cd ~/CS/464'
alias 480='cd ~/CS/480'

# program shortcuts
alias rst='exec $SHELL'
alias show='kitty +kitten icat '
alias cat='bat '
alias v='vim .'
alias hack='~/Downloads/matrix.sh'

# dotfiles configuarion aliases
alias config='/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME'

# School aliases
alias ratchet='racket -i -l typed/racket -l typed/rackunit' # racket start with right parameters
