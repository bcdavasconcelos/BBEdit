#!/bin/zsh


osascript -e 'property theInput: ""
set theInput to text returned of (display dialog "Create new file" with title "BBEdit" default answer theInput)
tell me to do shell script "cd \"$(dirname \"$BB_DOC_PATH\")\" && touch " & theInput'
