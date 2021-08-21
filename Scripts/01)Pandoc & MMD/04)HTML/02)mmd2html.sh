#!/bin/bash
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")"
multimarkdown "$BB_DOC_PATH" > "${BB_DOC_PATH%%.*}".html