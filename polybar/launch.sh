#!/bin/env bash

# terminate already running bars
killall -q polybar

# wait until bars have been terminated
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
polybar
