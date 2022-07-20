#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title New link for nho.com
# @raycast.currentDirectoryPath /Users/nhoizey/Documents/Devs/@perso/nicolas-hoizey.com
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon https://nicolas-hoizey.com/assets/me/nicolas-hoizey-180px.png
# @raycast.argument1 { "type": "text", "placeholder": "Title", "optional": true }
# @raycast.argument2 { "type": "text", "placeholder": "Content", "optional": true }

# Documentation:
# @raycast.description Create a link for nicolas-hoizey.com
# @raycast.author Nicolas Hoizey
# @raycast.authorURL https://twitter.com/nhoizey

# Main:

if [ -z "$1" ]; then
  echo "Usage: provide a title argument, and optionaly a content."
  exit -1
else
  title="$1"
fi

if [[ -z "$2" ]]
then
  content="$(pbpaste)"
else
  content="$2"
fi

./_scripts/new_link.sh "$title" "$content"
