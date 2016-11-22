#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

. /lib/lsb/init-functions

if [ ! -f /usr/bin/bpi-hw ] ; then
	log_action_msg "BPI: no bpi-hw !!"
	return
fi
log_action_msg "BPI: bpi-hw --bt on"
bpi-hw --bt on &
