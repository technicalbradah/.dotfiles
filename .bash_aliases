alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cp='cp -i'
alias e='exit'
alias h='history'
alias mkdir='mkdir -p'
alias mv='mv -i'
alias rm='rm -i'
alias psa='ps -aef |grep -i'
alias sc1='. ~/.bashrc'
alias shredem="export PATH=/bin:/usr/bin:/usr/local/bin;find . -type f -execdir shred -uvz '{}' \\;"
alias vc1='vi ~/.bash_aliases && . ~/.bashrc'


## Task Warrior Specific
alias t='task sync && task'
alias tls='task sync && task list'
#alias tab='task add +biz'
#alias tag='task add +grocery'
#alias tai='task add +ieee'
#alias tap='task add +personal'
alias tlb='task list +biz'
alias tlg='task list +grocery'
alias tli='task list +ieee'
alias tlp='task list +personal'

function tab {
task sync
task add +biz $1
task sync
}
function tag {
task sync
task add +grocery $1
task sync
}
function tai {
task sync
task add +ieee $1
task sync
}
function tap {
task sync
task add +personal $1
task sync
}
function td {
task sync
task $1 done
task sync
}


#OTHER
alias Grep=grep


# TMUX
alias ta='tmux attach || tmux'

alias df='df -h'

alias gs='git status'

alias vimnone='vim -u NONE -N'

alias gitm='git commit -m'
alias ga='git add'

#Prevent Ctrl+S from sending XOFF
stty ixany
stty ixoff -ixon

alias swapcaps='/usr/bin/xmodmap /home/jonewby/.swapcaps'
alias msec='sudo mount -t ecryptfs /store/root/secure /store/root/secure'
alias umsec='sudo umount /store/root/secure'
alias vnote='vim note:Home'
alias cdnote='cd ~/Documents/Notes'


function check_compression {
  curl -I -H 'Accept-Encoding: gzip,deflate' $1 | grep "Content-Encoding"

# Usage: check_compression http://standards.ieee.org/develop/regauth/oui/oui.txt
# Alt: GET -Used -H 'Accept-Encoding: gzip,deflate' http://standards.ieee.org/develop/regauth/oui/oui.txt
# See: http://www.if-not-true-then-false.com/2010/curl-tip-check-that-the-apache-compression-gzip-deflate-is-working/
}

alias gnoterm='gnome-terminal --geometry 127x40+63+0'
alias gnoterm='gnome-terminal --full-screen'

alias cdu=pushd
alias cdo=popd
alias mp=mplayer

