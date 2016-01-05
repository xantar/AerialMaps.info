#!/bin/bash

############################################
###  Author: Paul Benson
###    Date: 11/22/2015
###
### Created for aerialmaps.info
#############################################

### Command Line Arguements
#   Usage: remove.sh [Map ID] 
# Example: remove.sh 1 

# Map ID
MAP=$1

  # The script starts in ./ (The root directory of the Rails App)
  cd public
  rm images/map_correcting.png photos/maps/$MAP.png
  rm images/map_correcting.png photos/maps/"$MAP"_20.png

  cd processing
  rm -rf $MAP
