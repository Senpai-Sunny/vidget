#!/bin/bash

set -e

echo "Installing VIDGET..."

# Check if Python is installed
if ! command -v python3 >/dev/null 2>&1; then
    echo "Error: Python 3 is not installed."
    exit 1
fi

# Check if yt-dlp is installed
if ! command -v yt-dlp >/dev/null 2>&1; then
    echo "Error: yt-dlp is not installed."
    echo "Install it first (Arch): sudo pacman -S yt-dlp"
    exit 1
fi

# Check if ffmpeg is installed
if ! command -v ffmpeg >/dev/null 2>&1; then
    echo "Warning: ffmpeg is not installed."
    echo "Some downloads may not merge correctly."
fi

sudo install -Dm755 vidget /usr/local/bin/vidget

echo
echo "✅ VIDGET installed successfully!"
echo "Run it by typing:"
echo
echo "    vidget"
