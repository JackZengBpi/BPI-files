#!/bin/bash
echo userspace > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

for IN in 1 2 3 4 5 6 7 8 9 10 
do
	FREQ=240000
        echo $FREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
	CURFREQ=`cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq`
	TEMP=`cat /sys/class/thermal/thermal_zone0/temp`
        echo "scaling_setspeed: $FREQ	cpuinfo_cur_freq: $CURFREQ	TEMP: $TEMP"
        sleep 5
done

for IN in `cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies`
do
	FREQ=$IN
        echo $FREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
	CURFREQ=`cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq`
	TEMP=`cat /sys/class/thermal/thermal_zone0/temp`
        echo "scaling_setspeed: $FREQ	cpuinfo_cur_freq: $CURFREQ	TEMP: $TEMP"
        sleep 5
done

for IN in 1 2 3 4 5 6 7 8 9 10 
do
	FREQ=240000
        echo $FREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
	CURFREQ=`cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq`
	TEMP=`cat /sys/class/thermal/thermal_zone0/temp`
        echo "scaling_setspeed: $FREQ	cpuinfo_cur_freq: $CURFREQ	TEMP: $TEMP"
        sleep 5
done
