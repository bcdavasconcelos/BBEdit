#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -s -f markdown "$BB_DOC_PATH" --metadata link-citations=true -drefs -dabntex -o "${BB_DOC_PATH%%.*}".latex && open "${BB_DOC_PATH%%.*}".latex

