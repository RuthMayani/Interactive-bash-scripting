#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Error: No file path provided."
    echo "Usage: ./wordcount.sh test.txt"
    exit 1
fi
FILE="$1"

if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' does not exist."
    exit 1
fi

WORD_COUNT=$(cat "$FILE" | grep -oE '\w+' | wc -l)

echo "Total words: $WORD_COUNT"

echo "Hello world this is a test file." > test.txt
