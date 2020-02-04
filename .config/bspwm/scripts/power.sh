#!/bin/sh

notify-send 'System Options:'; \
notify-send '[e] - End Session'; \
notify-send '[d] - Suspend Session'; \
notify-send '[r] - Restart'; \
notify-send '[f] - Restart: Firmware'; \
notify-send '[s] - Shutdown'; \
notify-send '[ESC] - Cancel'; \

case "$keystroke" in
	e bspc quit ;;
	d systemctl suspend ;;
	f systemctl reboot ;;
	f systemctl reboot --firmware-setup ;;
	s systemctl poweroff
	esc ;;
esac
	
