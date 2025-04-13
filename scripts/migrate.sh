#!/bin/bash

# Function to convert .mdx files to .md files
convert_mdx_to_md() {
    local file="$1"
    local new_file="${file%.mdx}.md"
    mv "$file" "$new_file"
    echo "Converted $file to $new_file"
}

# Export the function to be used by find
export -f convert_mdx_to_md

# Find all .mdx files and convert them
find . -type f -name "*.mdx" -exec bash -c 'convert_mdx_to_md "$0"' {} \;
