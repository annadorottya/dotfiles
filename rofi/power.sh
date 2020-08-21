#!/bin/bash

OPTIONS="󰌾 Lock\n󰍃 Logout\n󰏦 Suspend\n󰽧 Hibernate\n󰐥 Shutdown\n󰜉 Reboot"

option=`echo -e $OPTIONS | awk '{print $1}' | tr -d '\r\n\t'`
if [ "$@" ]
then
	case $@ in
		*Lock)
			betterlockscreen -l blur
			;;
		*Logout)
			i3-msg exit
			;;
		*Suspend)
			systemctl suspend
			;;
		*Hibernate)
			systemctl hibernate
			;;
		*Shutdown)
			shutdown now
			;;
		*Reboot)
			reboot
			;;
	esac
else
	echo -e $OPTIONS
fi
