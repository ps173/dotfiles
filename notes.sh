#!/bin/bash

# Getting present date
fn=$(date +"%m_%d_%Y")

# file name
_file="./Documents/notes/$fn.txt"

if [ -f "$_file" ]; then
    echo "$_file exists."
    echo -e "\n">> $_file
    date +"## Note Made at: %I:%M %p">>  $_file
    vim $_file
else
    date >> $_file
    echo -e "\n">> $_file
    date +"## Note Made at: %I:%M %p">>  $_file
    vim $_file
fi


