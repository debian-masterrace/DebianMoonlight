#!/bin/sh
apropos . | rofi -lines 18 -columns 1 -p  Man\ Pages -dmenu | awk '{ print $1 }' | xargs kitty -e man | zsh
