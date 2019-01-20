#!/usr/bin/env bash

if [[ $# -eq 0 ]] ; then
    echo "Usage $0 name-of-circuit"
    exit 0
fi

set -e

FILE="$1-test.cir"
DASH="escdashesc"
FSLASH="escfslashesc"

if [ ! -f $FILE ]; then
  $FILE="$1.cir"
  if [ ! -f $FILE ]; then
    echo "Could not find $1-test.cir or $1.cir"
    exit 1;
  fi
fi

SPICE=/Applications/ngspice/bin/ngspice

NPN=$(cat ./models/npn-2N3904.cir)

if grep -q "$NPN" $FILE; then
  echo "$FILE has models; not updating."  
else
  # Remove characters that break functions like v() or i()
  sed -i'' -e "s/\//$FSLASH/g" $FILE 
  sed -i'' -e "s/\-/$DASH/g" $FILE

  # Add the models and tests
  (echo 1a; echo $NPN; echo .; echo w) | ed - $FILE
  (echo 1a; echo '.op'; echo .; echo w) | ed - $FILE
  echo "Added models to $FILE."
fi


$SPICE < $FILE


