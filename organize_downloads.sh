#!/bin/bash

DOWNLOAD_DIR="$HOME/Downloads"
DOCUMENTS_DIR="$HOME/Documents"
PICTURES_DIR="$HOME/Pictures"
VIDEOS_DIR="$HOME/Videos"
MUSIC_DIR="$HOME/Music"
ARCHIVES_DIR="$HOME/Archives"
OTHER_DIR="$HOME/Other"

# Create directories if they don't exist
mkdir -p "$DOCUMENTS_DIR" "$PICTURES_DIR" "$VIDEOS_DIR" "$MUSIC_DIR" "$ARCHIVES_DIR" "$OTHER_DIR"

# Move files based on their extensions
mv "$DOWNLOAD_DIR"/*.pdf "$DOCUMENTS_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.docx "$DOCUMENTS_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.txt "$DOCUMENTS_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.jpg "$PICTURES_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.png "$PICTURES_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.mp4 "$VIDEOS_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.mp3 "$MUSIC_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.zip "$ARCHIVES_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.tar.gz "$ARCHIVES_DIR" 2>/dev/null
mv "$DOWNLOAD_DIR"/*.rar "$ARCHIVES_DIR" 2>/dev/null

# Move all other files to the 'Other' directory
find "$DOWNLOAD_DIR" -maxdepth 1 -type f -exec mv {} "$OTHER_DIR" \; 2>/dev/null

