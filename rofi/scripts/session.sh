#!/usr/bin/env bash

# options to be displayed
option0="  Lock Screen (execute: light-locker-command -l)"
option1=" Log Out (execute: pkill -KILL -u "$USER")"
option2=" Suspend (execute: systemctl suspend)"
option3=" Reboot (execute: systemctl reboot)"
option4=" Power Off (execute: systemctl poweroff)"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4"

chosen="$(echo -e $options | rofi -lines 5 -dmenu -p "Session")"

case $chosen in
    $option0)
        light-locker-command --lock;;
    $option1)
        pkill -KILL -u $USER;;
    $option2)
        systemctl suspend;;
    $option3)
	systemctl reboot;;
    $option4)
	systemctl poweroff;;
esac
