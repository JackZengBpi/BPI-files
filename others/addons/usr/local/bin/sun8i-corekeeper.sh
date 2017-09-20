#!/bin/bash
#
# Simple script to enable CPU cores automatically again if cooling state is
# 3 or lower.
#

set -e

#BPI
cpunum=$(cat /proc/cpuinfo | grep processor | wc -l)
#BPI-M3
cpunum=8

if [ ! -f /sys/devices/virtual/thermal/cooling_device0/cur_state ]; then
  return
fi


get_cooling_state() {
  echo $(cat /sys/devices/virtual/thermal/cooling_device0/cur_state)
}

enable_cpu() {
  if [ ! -f /sys/devices/system/cpu/cpu$1/online ]; then
    return
  fi
  if [ $(cat /sys/devices/system/cpu/cpu$1/online) = 0 ]; then
    echo 1 > /sys/devices/system/cpu/cpu$1/online || true
  fi
}

while true; do
  c=0
  while [ $c -lt $cpunum ] ; do
    #echo c=$c
    if [ $(get_cooling_state) -le 3 ]; then
      enable_cpu $c
    fi
    c=$((c+1))
  done
  sleep 5
done
