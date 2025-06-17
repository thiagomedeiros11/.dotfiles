#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# At home
MONITORS=("HDMI-1")

# At work
#MONITORS=("eDP-1")


for m in "${MONITORS[@]}"; do
    if xrandr --query | grep -q "^$m connected"; then
        MONITOR=$m polybar --reload i3 &
    fi
done
