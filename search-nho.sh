#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search on nicolas-hoizey.com
# @raycast.mode silent

# Optional parameters:
# @raycast.icon https://nicolas-hoizey.com/assets/me/nicolas-hoizey-180px.png
# @raycast.argument1 { "type": "text", "placeholder": "Title", "optional": true }

# Documentation:
# @raycast.description Search on nicolas-hoizey.com
# @raycast.author Nicolas Hoizey
# @raycast.authorURL https://twitter.com/nhoizey

# Main:

if [[ -z "$1" ]]
then
  keywords="$(pbpaste)"
else
  keywords="$1"
fi

# Urlencode
keywords=$(php -r "echo urlencode(\"$keywords\");")

open "https://nicolas-hoizey.com/archives/?query=$keywords"
