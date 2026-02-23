#!/bin/bash

# 1️⃣Validate at least one argument
if [ $# -eq 0 ]; then
    echo "Error: No files or directories provided."
    echo "Usage: $0 <file_or_directory> [additional_files...]"
    exit 1
fi

# 2️⃣Loop through all arguments
for input in "$@"; do
    echo "----------------------------"
    echo "Checking: '$input'"

    # 3️⃣Check if the entry exists
    if [ ! -e "$input" ]; then
        echo "Error: '$input' does not exist."
        continue
    fi

    # Determine type
    if [ -f "$input" ]; then
        echo "'$input' is a regular file."
    elif [ -d "$input" ]; then
        echo "'$input' is a directory."
    else
        echo "'$input' is another type of file (e.g., link, socket, device)."
    fi

    #  Display long listing
    echo "Long listing for '$input':"
    ls -l "$input"
done
