#!/bin/bash

INSTALLPATH="/usr/local/bin"

# Parse commanline arguments
for i in "$@"
do
  case $i in --prefix=*)
    INSTALLPATH="${i#*=}"
    shift
    ;;
  *)
  echo "Unknown argument $i"
  exit 1
  ;;
esac
done

PATHFILE="installPaths.mk"
rm -f $PATHFILE
echo "INSTALLPATH=$INSTALLPATH" >> $PATHFILE
