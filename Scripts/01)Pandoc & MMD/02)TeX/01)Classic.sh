#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -s -f markdown "$BB_DOC_PATH" "--template=$HOME/Dropbox/Application Support/BBEdit/Pandoc/templates/classic.tex" --top-level-division=chapter -o "${BB_DOC_PATH%%.*}".tex && open "${BB_DOC_PATH%%.*}".tex
