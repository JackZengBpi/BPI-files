#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

. /lib/lsb/init-functions

if [ ! -f /usr/sbin/rfkill ] ; then
	log_action_msg "BPI: no /usr/sbin/rfkill !!"
	return
fi
log_action_msg "BPI: /usr/sbin/rfkill"
#rfkill unblock all
#rfkill unblock bluetooth
