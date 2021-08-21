#!/bin/zsh
PATH=$PATH:/usr/local/bin:/opt/homebrew/Cellar/coreutils/8.32/bin/

cd "$(dirname "$BB_DOC_PATH")" && gcsplit -k -z -n 4 "$d" '/^# /' '{*}'
