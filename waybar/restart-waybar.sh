#!/bin/bash
inotifywait -e close_write,moved_to,create -m . |
while read -r directory events filename; do
  if [ "$filename" = "config.jsonc"  ] || [ "$filename" = "style.css" ]; then
    restart-service waybar
  fi
done
