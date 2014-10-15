#!/bin/sh

cd redist

for i in `cat packages/packages.list`; do
  rm -rf "packages/$i/$i"
done

find . -name '*~' -exec rm -f {} \;
find . -name '.ocp' -exec rm -rf {} \;
find . -name '_obuild' -exec rm -rf {} \;

