#!/bin/sh

/usr/local/bin/pandoc -f markdown $1 -drefs -t latex "--template=$HOME/Dropbox/Application Support/BBEdit/Pandoc/templates/abntex-o-matic.latex" --top-level-division=chapter --quiet