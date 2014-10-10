#!/bin/sh

for i in `cat packages/packages.list`; do
  rm -rf "packages/$i/$i"
done

rm -rf _obuild 
find . -name '*~' -exec rm -f {} \;
find . -name '.ocp' -exec rm -rf {} \;

