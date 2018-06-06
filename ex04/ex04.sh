#!/bin/bash/

if [ "$#" -ne 2 ]; then
  exit 1
fi

find $2 | while read f
do
  echo $f | cut -d '/' -f 2
  grep -n $1 $f | cut -d ':' -f 1
done

exit 0