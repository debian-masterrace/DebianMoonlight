cat sources/rofiemoji/rofiemoji/emojis.txt |  rofi -lines 15 -columns 2 -p Emoji -dmenu | awk '{ print $1}'| xsel -bi
