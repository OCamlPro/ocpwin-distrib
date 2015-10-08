#!/bin/sh

DATE="$1"

echo date=$DATE

LAST=$(cat LAST)

echo last=$LAST

if test "$LAST" != "$DATE"; then
  echo New release
  sed "s/$LAST/$DATE/g" \
    ReleaseNotes/ocpwin-$LAST-release-notes.md \
    > ReleaseNotes/ocpwin-$DATE-release-notes.md
  sed "s|Release notes:|Release notes:\n\n* $DATE: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-$DATE-release-notes.md)|" \
    Readme.md > Readme.md.new
  mv Readme.md.new Readme.md
  sed "s/$LAST/$DATE/g" Download.md > Download.md.new
  mv Download.md.new Download.md
  git add ReleaseNotes/ocpwin-$DATE-release-notes.md
  git add Readme.md
  git add Download.md
  echo $DATE > LAST
  git add LAST
  ./scripts/upload-distrib.sh $DATE
else
  echo Same release
fi
