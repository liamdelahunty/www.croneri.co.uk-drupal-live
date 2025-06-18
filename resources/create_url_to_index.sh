#!/bin/bash

# Base path
BASE="/c/Users/liam.delahunty/OneDrive - Peninsula Group Online/Documents/2. Areas/www.croneri.co.uk/test"

while read -r url; do
  # Remove the domain part, keep the path
  path=$(echo "$url" | sed -E 's|https?://www\.croneri\.co\.uk||')
  # Remove trailing slashes
  path=$(echo "$path" | sed 's:/*$::')
  # If path is empty (homepage), set to index
  [ -z "$path" ] && path="index"

  # Build directory and file path
  dir="${BASE}/${path}"
  file="${dir}/index.html"

  # Create directory if it doesn't exist
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "[Created directory] $dir"
  fi

  # Create index.html if it doesn't exist
  if [ ! -f "$file" ]; then
    touch "$file"
    echo "[Created file] $file"
  else
    echo "[File exists] $file"
  fi
done < "${1:-/dev/stdin}"