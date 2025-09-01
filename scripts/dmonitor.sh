#!/bin/sh
#Toggle on/off an external HDMI monitor, does not support audio over HDMI as it's pretending that it's DVI

intern="eDP-1"
extern="HDMI-1-0"

extramonitor() {
	case "$1" in
		"extra") xrandr --output "$extern" --mode 1920x1080 --rate 144 --noprimary && xrandr --output "$intern" --auto --output "$extern" --noprimary --left-of "$intern" ;;
		"duplicate") xrandr --output "$extern" --mode 1920x1080 --rate 144 && xrandr --output "$intern" --auto --output "$extern" --same-as "$intern" ;;
		"disconnect") xrandr --output "$extern" --off --output "$intern" --auto --primary;;
		*) notify-send "Multi Monitor" "Unknown Operation" ;;
	esac
}

selection=$(printf "Extra\nDuplicate\nDisconnect" | dmenu -i -p "Monitor Configuration")
case "$selection" in
    "Extra") extramonitor "extra" ;;
    "Duplicate") extramonitor "duplicate" ;;
    "Disconnect") extramonitor "disconnect" ;;
    *) notify-send "Multi Monitor" "Unknown Operation" ;;
esac
