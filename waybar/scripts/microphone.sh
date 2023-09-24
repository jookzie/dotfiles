#!/bin/bash
set -e

if [ "$1" != "" ]; then
	wpctl set-mute @DEFAULT_AUDIO_SOURCE@ $1
fi

info=`wpctl get-volume @DEFAULT_AUDIO_SOURCE@`

status=`echo $info | grep "MUTED" > /dev/null && echo muted || echo unmuted`
percentage=`echo $info | grep -oP 'Volume: \K[^ ]+'`
percentage=`printf "%0.0f" $(bc -q <<< $percentage*100)`
device_name=`wpctl inspect @DEFAULT_AUDIO_SOURCE@ | grep -oP 'node.description = "\K[^"]+'`

echo '{"alt": "'$status'", "tooltip": "'$device_name'\nVolume: '$percentage'%"}'

