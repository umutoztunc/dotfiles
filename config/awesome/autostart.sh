#!/bin/bash

function run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run numlockx on
run nm-applet
run ibus-daemon -drx
run volumeicon
run xautolock -time 25 -locker "betterlockscreen -l"
run picom -b
