#!/bin/bash

for IN in `ls BOOTLOADER-*` ; do
	echo install $IN ...
	echo "tar xvf $IN -C /"
	tar xvf $IN -C /
done
