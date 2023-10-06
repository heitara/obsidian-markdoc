#!/bin/bash
TO_VAULT=$1
OBSIDIAN=.obsidian
SUBFOLDER="mdoc"
# check if .obsidian folder exists
if [ -d "$1/$OBSIDIAN" ]; then
  echo "The folder exists."
else
  echo "The folder $1 does contian $OBSIDIAN subfolder!"
  exit 1
fi

# create mdoc folder

if [ ! -d "$1/$OBSIDIAN/$SUBFOLDER" ]; then
  mkdir -p "$1/$OBSIDIAN/$SUBFOLDER"
  echo "Subfolder '$subfolder' created."
fi

# copy files
cp manifest.json "$1/$OBSIDIAN/$SUBFOLDER"
cp main.js "$1/$OBSIDIAN/$SUBFOLDER"
cp styles.css "$1/$OBSIDIAN/$SUBFOLDER"