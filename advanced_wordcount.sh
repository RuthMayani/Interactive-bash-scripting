#!/bin/bash
file_path="$1"

word_count=0

checkFileExists() {
    if [ ! -f "$file_path" ]; then
        echo "Error: File does not exist."
        exit 1
    fi
}

checkFileReadable() {
    if [ ! -r "$file_path" ]; then
        echo "Error: File is not readable."
        exit 1
    fi
}

checkFileNotEmpty() {
    if [ ! -s "$file_path" ]; then
        echo "Error: File is empty."
        exit 1
    fi
}

countWords() {
    word_count=$(cat "$file_path" | grep -oE '\w+' | wc -l)
}

displayCount() {
    echo "Total words: $word_count"
}

if [ $# -eq 0 ]; then
    echo "Error: Missing file path argument."
    echo "Usage: ./advanced_wordcount.sh test.txt"
    exit 1
fi

checkFileExists
checkFileReadable
checkFileNotEmpty
countWords
displayCount
