#!/bin/bash

if grep -q "mode=hidden" ~/.config/polybar/config; then
  sed -i "s/mode=hidden/mode=dynamic/" ~/.config/polybar/config
else
  sed -i "s/mode=dynamic/mode=hidden/" ~/.config/polybar/config
fi

killall -q polybar
polybar example &
