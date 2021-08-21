#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")" 
/usr/local/bin/pandoc -s "$BB_DOC_PATH" -o "${BB_DOC_PATH%%.*}".pptx && open "${BB_DOC_PATH%%.*}".pptx 
