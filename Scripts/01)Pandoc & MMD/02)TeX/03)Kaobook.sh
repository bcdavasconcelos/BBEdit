#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -f markdown+raw_tex "$BB_DOC_PATH" -o "${BB_DOC_PATH%%.*}".tex --template=kao.tex && open "${BB_DOC_PATH%%.*}".tex
