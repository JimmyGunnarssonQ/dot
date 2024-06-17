#!/usr/bin/env bash

killall polybar 
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar_main &
  done
else
  polybar --reload bar_main &
fi
