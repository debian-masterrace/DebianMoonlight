#!/bin/bash

# options to be displayed
option0="~/.config/bspwm/bspwmrc"
option1="~/.config/sxhkd/sxhkdrc"
option2="~/.config/polybar/config"
option3="~/.config/rofi/config.rasi"
option4="~/.config/kitty/kitty.conf"
option5="~/.config/picom/picom.conf"
option6="~/.vim/vimrc"
option7="~/.zshrc"
option8="~/.config/xmobar/xmobarrc"
option9="~/.xmonad/xmonad.hs"
option10="~/.Xresources"
option11="/etc/apt/sources.list"
option12="~/.config/dunst/dunstrc"
option13="~/.mozilla/firefox/d/c/userChrome.css"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6\n$option7\n$option8\n$option9\n$option10\n$option11\n$option12\n$option13"

chosen="$(echo -e "$options" | rofi -lines 14 -dmenu -p "Config")"
case $chosen in
    $option0)
        /usr/bin/kitty -e vim /home/taylank/.config/bspwm/bspwmrc;;
    $option1)
        /usr/bin/kitty -e vim /home/taylank/.config/sxhkd/sxhkdrc;;
    $option2)
        /usr/bin/kitty -e vim /home/taylank/.config/polybar/config;;
	$option3)
		/usr/bin/kitty -e vim /home/taylank/.config/rofi/config.rasi;;
	$option4)
		/usr/bin/kitty -e vim /home/taylank/.config/kitty/kitty.conf;;
	$option5)
    		/usr/bin/kitty -e vim /home/taylank/.config/picom/picom.conf;;
	$option6)
        	/usr/bin/kitty -e vim /home/taylank/.vim/vimrc;;
	$option7)
		/usr/bin/kitty -e vim /home/taylank/.zshrc;;
	$option8)
		/usr/bin/kitty -e vim /home/taylank/.config/xmobar/xmobarrc;;
	$option9)
		/usr/bin/kitty -e vim /home/taylank/.xmonad/xmonad.hs;;
	$option10)
		/usr/bin/kitty -e vim /home/taylank/.Xresources;;
	$option11)
		/usr/bin/kitty -e sudo vim /etc/apt/sources.list;;
	$option12)
		/usr/bin/kitty -e vim /home/taylank/.config/dunst/dunstrc;;
	$option13)
		/usr/bin/kitty -e vim /home/taylank/.mozilla/firefox/84crvwxe.default-release/chrome/userChrome.css;;
	esac
