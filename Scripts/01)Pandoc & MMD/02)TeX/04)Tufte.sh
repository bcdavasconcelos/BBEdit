#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -drefs -dtufte "$BB_DOC_PATH" -o "${BB_DOC_PATH%%.*}".tex && open "${BB_DOC_PATH%%.*}".tex