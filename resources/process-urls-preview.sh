#!/bin/bash

# Base path
BASE="/c/Users/liam.delahunty/OneDrive - Peninsula Group Online/Documents/2. Areas/www.croneri.co.uk/www"

while read -r url; do
  # Remove the domain part, keep the path
  path=$(echo "$url" | sed -E 's|https?://www\.croneri\.co\.uk||')
  # Remove any trailing slashes
  path=$(echo "$path" | sed 's:/*$::')
  # If path is empty (i.e. just the homepage), set to /index
  [ -z "$path" ] && path="/index"
  # Build the full local file path
  fullpath="${BASE}${path}.html"
  dir=$(dirname "$fullpath")
  # Report what would happen
  if [ ! -d "$dir" ]; then
    echo "[Would create directory] $dir"
  fi
  if [ ! -f "$fullpath" ]; then
    echo "[Would create file] $fullpath"
  else
    echo "[File exists] $fullpath"
  fi
done < "${1:-/dev/stdin}"