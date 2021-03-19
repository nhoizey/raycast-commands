#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title New note for nho.com
# @raycast.mode silent

# Optional parameters:
# @raycast.icon https://nicolas-hoizey.com/assets/me/nicolas-hoizey-180px.png
# @raycast.argument1 { "type": "text", "placeholder": "Content", "optional": true }

# Documentation:
# @raycast.description Create a note for nicolas-hoizey.com
# @raycast.author Nicolas Hoizey
# @raycast.authorURL https://twitter.com/nhoizey

# Main:

if [[ -z "$1" ]]
then
  content="$(pbpaste)"
else
  content="$1"
fi

cd /Users/nhoizey/Documents/Devs/@perso/nicolas-hoizey.com
./_scripts/new_note.sh "$content"
