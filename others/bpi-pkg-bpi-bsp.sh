BSPDIR=$1

if [ -z $BSPDIR ] ; then
	echo usage: $0 BSPDIR
	exit
fi

echo cp -a $BSPDIR/SD/100MB/* ../SD/100MB
cp -a $BSPDIR/SD/100MB/* ../SD/100MB
echo cp -a $BSPDIR/SD/BPI-BOOT-*.tgz ../SD/BPI-BOOT
cp -a $BSPDIR/SD/BPI-BOOT-*.tgz ../SD/BPI-BOOT
echo cp -a $BSPDIR/SD/BOOTLOADER-*.tgz ../SD/BPI-ROOT
cp -a $BSPDIR/SD/BOOTLOADER-*.tgz ../SD/BPI-ROOT
echo cp -a $BSPDIR/SD/*-Kernel.tgz ../SD/BPI-ROOT
cp -a $BSPDIR/SD/*-Kernel.tgz ../SD/BPI-ROOT
