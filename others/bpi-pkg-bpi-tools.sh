PACKAGE=bpi-tools
PDIR=$PACKAGE/usr/bin
mkdir -p $PDIR
cp -a ../../bpi-tools/bpi* $PDIR
cd $PACKAGE
tar czvf ../../SD/BPI-ROOT/$PACKAGE.tgz .
cd ..
rm -rf $PACKAGE
