#!/bin/bash

# file name
echo "What is the name of the note ?"
read TITLE 
FULL_PATH="$HOME/Documents/personal-notes/$TITLE.md"

# Check the file name and path
if [ -f "$FULL_PATH" ]; then
    echo "$FULL_PATH exists."
else
    echo -e "# $_file \n">> $FULL_PATH
    date >> $FULL_PATH
    echo -e "\n">> $FULL_PATH
fi

# Open in your friendly editor
$EDITOR $FULL_PATH
