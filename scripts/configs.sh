#!/bin/sh
config=$(echo "bspwm\nsxhkd\nranger\nneovim\nawesome\ni3\npolybar\nqtile\nrofi\nthis" | $DMENU -p "Choose ur config")


case $config in
	bspwm) $TERMINAL -e nvim ~/.config/bspwm/bspwmrc;;
	sxhkd) $TERMINAL -e nvim ~/.config/sxhkd/sxhkdrc;;
	awesome) $TERMINAL -e nvim ~/.config/awesome/rc.lua;;
	i3) $TERMINAL -e nvim ~/.config/i3/config;;
	polybar) $TERMINAL -e nvim ~/.config/polybar/config;;
	qtile) $TERMINAL -e nvim ~/.config/qtile/config.py;;
	this) $TERMINAL -e nvim ~/scripts/configs.sh;;
	ranger) $TERMINAL -e nvim ~/.config/ranger/rc.conf;;
	rofi) $TERMINAL -e nvim ~/.config/rofi/Monokai.rasi;;
	neovim) $TERMINAL -e nvim ~/.config/nvim/init.vim;;

esac
