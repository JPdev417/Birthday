#!/bin/bash

# Depencies:
# - curl
# - afplay (macOS only)

# Variables:
file_url="https://supersecretive.vercel.app/test.txt"
destination="/tmp/message.txt"


clear && echo "Script is loading.. please hold on.." # Clear the terminal and show a message

curl -sSL "$file_url" -o "$destination"

if [ -f "$destination" ]; then
    # Open the file using TextEdit
    open -a TextEdit "$destination"
else
    echo "Failed to download the file."
fi
# use this ^ to check if file is downloaded or not, and open in TextEdit

curl https://birthday-seven-sand.vercel.app/bday.mp3 -s  > /tmp/song.mp3 && afplay /tmp/song.mp3 # Download and play the song

rm /tmp/song.mp3 # Remove the song after playing
