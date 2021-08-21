#!/bin/zsh

cd "$(dirname "$BB_DOC_PATH")" && csplit -k -n 4 "$BB_DOC_PATH" '/^# /' {1000}
