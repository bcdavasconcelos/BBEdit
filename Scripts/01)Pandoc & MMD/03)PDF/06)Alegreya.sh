#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -s -f markdown "$BB_DOC_PATH" -drefs -dpdf -V 'mainfont=Alegreya' -V 'sansfont=Alegreya Sans' -V 'monofont=Menlo' -V 'fontsize=13pt' -V 'geometry: top=3cm, left=3cm, right=2cm, bottom=2cm' -V 'linestretch:1.5' -V 'pagestyle:plain' --toc -o "${BB_DOC_PATH%%.*}".pdf && open "${BB_DOC_PATH%%.*}".pdf
