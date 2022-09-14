#! /bin/bash

# this is a cheap shot, works for me w only 1 external monitor
if [[ $(xrandr | grep " connected" | wc -l) -gt 1 ]]; then
    xrandr --output eDP-1 --off
fi
