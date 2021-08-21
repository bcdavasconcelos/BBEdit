#!/bin/bash
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
multimarkdown -b -t latex "$BB_DOC_PATH"
