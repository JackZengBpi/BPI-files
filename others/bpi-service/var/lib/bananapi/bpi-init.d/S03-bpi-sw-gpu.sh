#!/bin/bash
BOARD=$(bpi-hw)

XSGXFILE="/usr/share/lightdm/lightdm.conf.d/55-xserver-command-pvr.conf"
XSGXBAK="/usr/share/lightdm/lightdm.conf.d/.55-xserver-command-pvr.conf"

setup_xsgx_xserver()
{
  if [ -f "/usr/local/XSGX/bin/X" ] ; then
    if [ ! -f "$XSGXFILE" ] ; then
      cp -a $XSGXBAK $XSGXFILE
    fi
  fi
}

setup_normal_xserver()
{
  if [ -f "$XSGXFILE" ] ; then
    rm -f $XSGXFILE 
  fi
}

setup_board()
{
  case ${BOARD} in
  bpi-m3)
    setup_xsgx_xserver
    ;;
  *)
    setup_normal_xserver
    ;;
  esac
}

#main
setup_board
