#!/bin/zsh

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -s -f markdown "$BB_DOC_PATH" -drefs -ddocx -o "${BB_DOC_PATH%%.*}".docx && open "${BB_DOC_PATH%%.*}".docx
