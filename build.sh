#!/bin/sh

SUBDIRS="slips trezor-apps trezor-faq trezor-tech trezor-user"

rm -rf _build/
mkdir _build

cp index.html _build/

for i in $SUBDIRS; do
  mkdir _build/$i/
  cd $i
  make html
  mv _build/html/* ../_build/$i/
  rm -rf _build/
  cd ..
done

COPYDIRS="slips/slip-0015"

for i in $COPYDIRS; do
  cp -a $i _build/$i
done
