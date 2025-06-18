#!/bin/bash

# Base path
BASE="/c/Users/liam.delahunty/OneDrive - Peninsula Group Online/Documents/2. Areas/www.croneri.co.uk/test"

# Read from stdin or file
while read -r url; do
  # Remove the domain part, keep the path
  path=$(echo "$url" | sed -E 's|https?://www\.croneri\.co\.uk||')
  # Remove any trailing slashes
  path=$(echo "$path" | sed 's:/*$::')
  # If path is empty (i.e. just the homepage), set to /index
  [ -z "$path" ] && path="/index"
  # Build the full local file path
  fullpath="${BASE}${path}.html"
  # Create directory if it doesn't exist
  dir=$(dirname "$fullpath")
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
  fi
  # Create the file if it doesn't exist
  if [ ! -f "$fullpath" ]; then
    touch "$fullpath"
    echo "Created: $fullpath"
  else
    # Uncomment the next line if you want to log existing files
    # echo "Exists: $fullpath"
    :
  fi
done < "${1:-/dev/stdin}"