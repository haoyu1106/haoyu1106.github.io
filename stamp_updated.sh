#!/bin/zsh
# Sets the footer date to the current month. Run before publishing: ./stamp_updated.sh
cd "$(dirname "$0")" || exit 1
stamp="Updated $(date '+%B %Y')"
/usr/bin/sed -i '' -E "s/Updated [A-Z][a-z]+ [0-9]{4}/$stamp/" index.html
grep -o "Updated [A-Z][a-z]* [0-9]*" index.html
