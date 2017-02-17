#!/bin/bash

BOARD=BPI-M64
board="bpi-m64"
kernel="3.10.102-BPI-M64-Kernel"

T=`pwd`
SD="$T/SD"
U="${SD}/100MB"
B="${SD}/BPI-BOOT"
R="${SD}/BPI-ROOT"
#
## create files for bpi-tools & bpi-migrate
#
(cd $B ; tar czvf $SD/BPI-BOOT-${board}.tgz .)
(cd $R ; tar czvf $SD/${kernel}.tgz lib/modules)
(cd $R ; tar czvf $SD/BOOTLOADER-${board}.tgz usr/lib/u-boot/bananapi)

