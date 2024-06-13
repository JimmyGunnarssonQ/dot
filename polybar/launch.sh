#!/usr/bin/env bash

killall polybar 
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar_main &
  done
else
  polybar --reload example &
fi
#echo "---" | tee -a /tmp/polybar_main.log
#polybar bar_main 2>&1 | tee -a /tmp/polybar_main.log & disown
