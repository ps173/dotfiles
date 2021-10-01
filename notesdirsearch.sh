#!/bin/bash
FILENAME=$(find ~/Documents/personal-notes -path "**.md" | fzf )
vim $FILENAME
