#!/bin/sh

name=`basename $1`

pdfname=`echo $name | sed s/.md$/.pdf/`

/usr/bin/iconv -f UTF-8-MAC -t UTF-8 $1 | pandoc -f markdown -s --highlight-style pygments -o $pdfname -V documentclass=ltjsarticle --pdf-engine=lualatex -V geometry:margin=1in -N --toc

