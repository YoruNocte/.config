#!/bin/bash

BAT="/sys/class/power_supply/BAT0"

capacity=$(cat "$BAT/capacity")
status=$(cat "$BAT/status")

if [[ "$status" == "Charging" ]]; then
    icon=""
elif (( capacity >= 80 )); then
    icon=""
elif (( capacity >= 60 )); then
    icon=""
elif (( capacity >= 40 )); then
    icon=""
elif (( capacity >= 20 )); then
    icon=""
else
    icon=""
fi

echo "$capacity% $icon"
