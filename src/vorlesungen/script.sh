#!/bin/bash
mkdir -p ../../build/
for d in */ ; do
  echo "$d"
  cd $d
  for mdfile in *.md; do
    pdffile=${mdfile%.md}.pdf
    outfile=../../../build/$pdffile
    if [ $mdfile -nt $outfile ]; then
      echo $mdfile
      pandoc -t beamer --include-in-header ../header.tex $mdfile -o $outfile
      echo "Done"
    fi
  done
  cd ..
done
