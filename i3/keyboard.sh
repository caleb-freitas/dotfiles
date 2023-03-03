#!/bin/bash
current_layout=$(setxkbmap -query | awk '/layout/{print $2}')
if [ "$current_layout" == "us" ]; then
    setxkbmap -layout br
elif [ "$current_layout" == "br" ]; then
    setxkbmap -layout dvorak
else
    setxkbmap -layout us
fi
