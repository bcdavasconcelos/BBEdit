#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
/usr/local/bin/pandoc -s -f markdown "$BB_DOC_PATH" --metadata link-citations=true "--csl=$HOME/Dropbox/Application Support/BBEdit/Pandoc/csl/abnt-phi.csl" "--bibliography=$HOME/Dropbox/Application Support/BBEdit/Pandoc/refs/Bib.json" --toc -o "${BB_DOC_PATH%%.*}".html && open "${BB_DOC_PATH%%.*}".html