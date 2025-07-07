#!/bin/bash

set -e

mkdir -p ~/.local/bin

git clone https://github.com/romululz/yt-dlp-music.git ~/yt-dlp-music

mv ~/yt-dlp-music/yt-dlp-music ~/.local/bin/

rm -rf ~/yt-dlp-music

chmod +x ~/.local/bin/yt-dlp-music

if ! grep -Fxq 'export PATH="$HOME/.local/bin:$PATH"' ~/.bashrc; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi

source ~/.bashrc

echo "Finished."
