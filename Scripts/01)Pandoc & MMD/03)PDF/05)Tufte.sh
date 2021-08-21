#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -drefs -dtufte -dpdf2 "$BB_DOC_PATH" -o "${BB_DOC_PATH%%.*}".pdf && open "${BB_DOC_PATH%%.*}".pdf