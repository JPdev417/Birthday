#!/bin/bash

# Depencies:
# - curl
# - afplay (macOS only)

# Variables:
image_url="https://supersecretive.vercel.app/test.jpeg"
destination="/tmp/image.jpeg"


clear && echo "Script is loading.. please hold on.." # Clear the terminal and show a message

curl -sSL "$image_url" -o "$destination"

if [ -f "$destination" ]; then
    # Open the file using TextEdit
    open -a Preview "$destination"
else
    echo "Failed to download the file."
fi
# use this ^ to check if file is downloaded or not, and open in TextEdit

# URL of the audio or video file you want to download
file_url="https://supersecretive.vercel.app/bday.mp3"

# Destination path where the file will be saved
destination="/tmp/song.mp3"

# Download the file using curl
curl -sSL "$file_url" -o "$destination"

# Check if the file was successfully downloaded
if [ -f "$destination" ]; then
    # Open the file using QuickTime Player
    open -a "Music" "$destination"
    osascript -e 'tell application "Music" to close window 1'
else
    echo "Failed to download the file."
fi

sleep 30 # Wait for 30 seconds, then remove the file
echo "Removing the files from /tmp.."
rm /tmp/song.mp3 # Remove the song after playing
