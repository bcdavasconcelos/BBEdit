#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -s -f markdown "$BB_DOC_PATH" "--template=$HOME/Dropbox/Application Support/BBEdit/Pandoc/templates/abntex-o-matic.latex" --top-level-division=chapter -o "${BB_DOC_PATH%%.*}".latex && open "${BB_DOC_PATH%%.*}".latex

# "--lua-filter=$HOME/Dropbox/Application Support/BBEdit/Pandoc/lua-filters/include-files/include-files.lua"
# -V 'pagestyle:plain|headings|empty'
# -V linkcolor:blue
# -V 'mainfont=Alegreya' -V 'sansfont=Alegreya Sans' -V 'monofont=Menlo' -V 'fontsize=13pt' -V 'geometry: top=3cm, left=3cm, right=2cm, bottom=2cm' 