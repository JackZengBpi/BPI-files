#!/bin/sh
BOARD=BPI-M64-EMMC
P=.
U=100MB

mkdir -p $U
TMP_FILE=${U}/${BOARD}.tmp
IMG_FILE=${U}/${BOARD}-8k.img

(sudo dd if=/dev/zero of=${TMP_FILE} bs=1M count=100) >/dev/null 2>&1
LOOP_DEV=`sudo losetup -f --show ${TMP_FILE}`

(sudo dd if=$P/boot0.bin	of=${LOOP_DEV} bs=1k seek=8) >/dev/null 2>&1
(sudo dd if=$P/ub-m64-emmc.bin	of=${LOOP_DEV} bs=1k seek=19096) >/dev/null 2>&1

sudo sync

sudo losetup -d ${LOOP_DEV}

(dd if=${TMP_FILE} of=${IMG_FILE} bs=1024 skip=8 count=102392 status=noxfer) >/dev/null 2>&1

rm -f ${IMG_FILE}.gz
echo "gzip ${IMG_FILE}"
gzip ${IMG_FILE}
rm -f ${TMP_FILE}
