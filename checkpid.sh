#!/usr/bin/env bash

##############################
###  Author: Paul Benson
###    Date: 10/18/2015
###
### Checks the process.id file in the directory of a map being processed and returns true if the PID is running
###
###   Usage: checkpid.sh [map_id]
### Example: checkpid.sh 1
##############################

if [ -e public/processing/$1/process.id ] ; then
  checkpid=$(cat "public/processing/$1/process.id")

  ps -aux | grep generate.sh | grep -v grep | grep $checkpid > /dev/null
  exit $?
else
  exit 1
fi