#!/bin/sh

source .profile

alias less="less -S"
export TERM=xterm
export PS1="\[\e[1;32m\][\u@\h \W]$\[\e[00m\] "
