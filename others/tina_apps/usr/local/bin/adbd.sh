#!/bin/bash
PROG=/usr/local/bin/adbd
              
start_service() {
        [ -e /sys/class/android_usb/android0 ] && {
                echo 0 > /sys/class/android_usb/android0/enable
                echo 18d1 > /sys/class/android_usb/android0/idVendor
                echo D002 > /sys/class/android_usb/android0/idProduct
                echo adb > /sys/class/android_usb/android0/functions 
                echo 1 > /sys/class/android_usb/android0/enable      
        }                                                            
                                                                    
        [ -x $PROG ] && {
#        $PROG -D &
        $PROG -D 2>&1 >/dev/null &
	}
}

start_service
