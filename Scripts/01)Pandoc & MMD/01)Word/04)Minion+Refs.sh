#!/bin/zsh

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -s -f markdown "$BB_DOC_PATH" -drefs "--reference-doc=$HOME/Dropbox/Application Support/BBEdit/Pandoc/templates/rmd-minion-reference.docx"  -o "${BB_DOC_PATH%%.*}".docx && open "${BB_DOC_PATH%%.*}".docx
