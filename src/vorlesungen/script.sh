#!/bin/bash
mkdir -p ../../build/
for d in */ ; do
  echo "$d"
  cd $d
  for mdfile in *.md; do
    pdffile=${mdfile%.md}.pdf
    if [ $mdfile -nt $pdffile ]; then
      echo $mdfile
      pandoc -t beamer --include-in-header ../header.tex $mdfile -o ../../../build/$pdffile
      echo "Done"
    fi
  done
  cd ..
done
