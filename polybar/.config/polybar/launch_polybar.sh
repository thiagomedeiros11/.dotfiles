#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITORS=("eDP-1" "HDMI-1")

for m in "${MONITORS[@]}"; do
    if xrandr --query | grep -w "$m connected"; then
        MONITOR=$m polybar --reload i3 &
    fi
done
