#!/bin/zsh
PATH=$PATH:/usr/local/bin

/usr/local/bin/pandoc -f markdown -t html --filter pandoc-sidenote -C --metadata link-citations=true "--csl=$HOME/Dropbox/Application Support/BBEdit/Pandoc/csl/abnt-phi.csl" "--bibliography=$HOME/Dropbox/Application Support/BBEdit/Pandoc/refs/Content.json"