#!/bin/bash

for IN in `ls BOOTLOADER-*` ; do
	echo install $IN ...
	echo "tar xvf $IN --keep-directory-symlink -C /"
	tar xvf $IN --keep-directory-symlink -C /
done
