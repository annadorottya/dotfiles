#!/bin/bash

if xrandr -q | grep -q "HDMI1 connected"; then
	echo "HDMI connected, activating"
	xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --mode 1920x1080 --pos 1920x0 --rotate normal --output VIRTUAL1 --off
	pactl set-card-profile 0 output:hdmi-stereo-extra1
else
	echo "HDMI not connected, deactivating"
	xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --off --output VIRTUAL1 --off
	pactl set-card-profile 0 output:analog-stereo
fi