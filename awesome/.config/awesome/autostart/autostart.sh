#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@" &
  fi
}

run nitrogen --restore
run tilda
run polkit-dumb-agent
picom
