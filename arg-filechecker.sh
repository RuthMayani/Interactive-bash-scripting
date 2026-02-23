#!/bin/bash

# Accept command-line argument
input="$1"

# Validate that an argument was provided
if [ -z "$input" ]; then
    echo "Error: No file or directory name provided."
    echo "Usage: $0 <file_or_directory>"
    exit 1
fi

# Check if the file/directory exists
if [ ! -e "$input" ]; then
    echo "Error: '$input' does not exist."
    exit 1
fi

 # Determine type
if [ -f "$input" ]; then
    echo "'$input' is a regular file."
elif [ -d "$input" ]; then
    echo "'$input' is a directory."
else
    echo "'$input' is another type of file (e.g., link, socket, device)."
fi

# Display long listing
echo "Long listing for '$input':"
ls -l "$input"
