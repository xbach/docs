#!/bin/sh

SUBDIRS="trezor-apps"

rm -rf _build/trezor-apps

for i in $SUBDIRS; do
  mkdir _build/$i/
  cd $i
  make html
  mv _build/html/* ../_build/$i/
  rm -rf _build/
  cd ..
done
