#!/bin/bash
BOARD=$(bpi-hw)

load_modules()
{
  case ${BOARD} in
  bpi-m3)
    modprobe ft5x_ts
    ;;
  bpi-m64)
    modprobe ft5x_ts
    ;;
  bpi-m2m)
    modprobe gt9xxnew_ts
    ;;
  bpi-m2u)
    modprobe ft5x_ts
    ;;
  bpi-m2)
    modprobe ft5x_ts
    ;;
  bpi-m1p)
    modprobe ft5x_ts
    ;;
  bpi-m1)
    modprobe ft5x_ts
    ;;
  bpi-r1)
    modprobe ft5x_ts
    ;;
  *)
    ;;
  esac
}

#main
load_modules
