#!/bin/bash
#thanks for loboris's work
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

echo 0 > /proc/sys/kernel/hung_task_timeout_secs

dmesg -n 1

