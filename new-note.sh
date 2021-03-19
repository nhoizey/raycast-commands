#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Create a note for nicolas-hoizey.com
# @raycast.mode silent

# Optional parameters:
# @raycast.icon https://nicolas-hoizey.com/assets/me/nicolas-hoizey-180px.png

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

# Urlencode
content=$(php -r "echo urlencode(\"$content\");")

cd /Users/nhoizey/Documents/Devs/@perso/nicolas-hoizey.com
./_scripts/new_note.sh "$content"
