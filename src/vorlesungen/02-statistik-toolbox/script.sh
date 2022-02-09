#!/bin/bash
while :
do
  for mdfile in *.md; do
    pdffile=${mdfile%.md}.pdf
    if [ $mdfile -nt $pdffile ]; then
      echo $mdfile
      pandoc -t beamer --include-in-header header.tex $mdfile -o $pdffile
    fi
  done
  sleep 10
done
