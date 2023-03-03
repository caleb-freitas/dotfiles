#!/bin/bash

layout1="us"
variant1="dvp"
layout2="br"
variant2="dvorak"

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')
current_variant=$(setxkbmap -query | grep variant | awk '{print $2}')

if [[ "$current_layout" == "$layout1" && "$current_variant" == "$variant1" ]]; then
  setxkbmap -layout $layout2 -variant $variant2
else
  setxkbmap -layout $layout1 -variant $variant1
fi
