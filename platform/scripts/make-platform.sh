#!/bin/sh

cd redist

for i in `cat packages/packages.list`; do
  rm -rf "packages/$i/$i"
done

for i in `cat packages/packages.list`; do
  (cd packages/$i;
    tar xf ../../../archives/$i"+opam.tar.gz")
done

