#!/bin/sh

SUBDIRS="trezor-apps trezor-faq trezor-tech trezor-user"
OUTDIR="docs"

for i in $SUBDIRS; do
  mkdir -p $OUTDIR/$i/
  cd $i
  make html
  cp -a _build/html/* ../$OUTDIR/$i/
  rm -rf _build/
  cd ..
done
