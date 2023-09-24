#!/usr/bin/env sh
op=$(echo -e " Poweroff\n Reboot\n Suspend\n Logout" | rofi -dmenu)

case $op in
        " Poweroff")
                systemctl poweroff
                ;;
        " Reboot")
                systemctl reboot
                ;;
        " Suspend")
                systemctl suspend
                ;;
        " Logout")
                killall Hyprland
                ;;
esac
