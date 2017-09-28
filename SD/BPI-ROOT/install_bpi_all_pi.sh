#!/bin/bash

source ../../others/for-bpi-tools/conf/board/bpi-all.conf

for IN in $BOOTFILES ; do
	echo install $IN ...
	echo "tar xvf $IN -C /media/pi/BPI-ROOT"
	tar xvf ../BPI-BOOT/$IN -C /media/pi/BPI-BOOT
done

for IN in $BPIFILES ; do
	echo install $IN ...
	echo "tar xvf $IN -C /media/pi/BPI-ROOT"
	tar xvf $IN -C /media/pi/BPI-ROOT
done

