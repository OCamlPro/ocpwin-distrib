#!/bin/sh

case $1 in
    "") echo "You must provide the release date in argument:"
        echo "upload-distrib.sh 20141001";
        exit 2;;
esac

DATE="$1"
SRC="$HOME/WindowsSharedFolder/ocpwin-builds/$DATE"
DST="kimsufi2011:/home/www.ocamlpro.com/www/pub/ocpwin/ocpwin-builds/"

 scp  \
  $SRC/ocpwin32-$DATE-msvc32-4.01.0+ocp1.exe \
  $SRC/ocpwin32-$DATE-mingw32-4.01.0+ocp1.exe \
  $SRC/ocpwin32-$DATE-full-mingw32-4.01.0+ocp1.exe \
  $DST/ocpwin32/ \
&& \
 scp \
  $SRC/ocpwin64-$DATE-msvc64-4.01.0+ocp1.exe \
  $SRC/ocpwin64-$DATE-mingw64-4.01.0+ocp1.exe \
  $SRC/ocpwin64-$DATE-full-mingw64-4.01.0+ocp1.exe \
  $DST/ocpwin64/
