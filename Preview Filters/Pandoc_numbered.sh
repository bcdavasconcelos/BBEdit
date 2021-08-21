#!/bin/bash
PATH=$PATH:/usr/local/bin

pandoc -f markdown -t html -C --metadata link-citations=true "--csl=$HOME/Dropbox/Application Support/BBEdit/Pandoc/csl/abnt-phi.csl" "--bibliography=$HOME/Dropbox/Application Support/BBEdit/Pandoc/refs/Content.bib" -N --toc