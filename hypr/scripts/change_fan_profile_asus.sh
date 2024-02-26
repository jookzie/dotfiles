#!/bin/bash
asusctl profile -n

status=$?

profile=`asusctl profile -p`

if [ $status -eq "0" ]; then
	notify-send "${profile}"
else
	notify-send "Could not set fan profile. (asusctl profile -n)"
fi
