#!/bin/sh

source .profile

alias less="less -S"
export TERM=xterm
export PS1="\[\e[1;32m\][\u@\h \W]$\[\e[00m\] "

#####
# local
alias api='cd ~/PycharmProjects/connector-api-python/'
alias dev2='git checkout development2'
alias pipe='cd /opt/origami/connector-pipeline-python'
alias plat='cd /opt/origami/platform-api-python'
alias conm='cd /opt/origami/connector-common-python'
alias ing='cd ~/pipeline-ingest'
alias bra='git branch | grep \*'
alias com='git commit'
alias less='less -S'
alias bas="ssh anton@bas01fe0001.o1.usw2.origami42.com -t 'bash'"
alias prot='cd /opt/origami/app-prototype'
alias common='cd /opt/origami/common-python'
