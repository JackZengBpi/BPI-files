#!/bin/bash
BOARD=$(bpi-hw)

load_modules()
{
  case ${BOARD} in
  bpi-m3)
    modprobe bcmdhd
    ;;
  bpi-m64)
    modprobe bcmdhd
    ;;
  bpi-m2m)
    modprobe bcmdhd
    ;;
  bpi-m2u)
    modprobe bcmdhd
    ;;
  bpi-m2p)
    modprobe bcmdhd
    ;;
  bpi-m2)
    modprobe bcmdhd
    ;;
  bpi-m1p)
    modprobe ap6211
    ;;
  *)
    ;;
  esac
}

#main
load_modules
