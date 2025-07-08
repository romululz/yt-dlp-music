# yt-dlp-music

Simple [yt-dlp](https://github.com/yt-dlp/yt-dlp) bash script that formats all audio to FLAC and automatically adds song metadata, including cover art. 



### Dependencies

Arch
```
sudo pacman -S yt-dlp ffmpeg python-mutagen git wget imagemagick flac
```

Fedora
```
sudo dnf install -y yt-dlp ffmpeg python3-mutagen git wget ImageMagick flac
```

Ubuntu / Mint / Debian 
```
sudo apt install -y yt-dlp ffmpeg python3-mutagen git wget imagemagick flac
```




### Script Installation

Open a terminal and run

```bash
bash <(wget -qO- https://raw.githubusercontent.com/romululz/yt-dlp-music/refs/heads/main/yt-dlp-music-script.sh)
```


### Manual Installation

Open terminal in home folder

```
mkdir -p ~/.local/bin
```

```
git clone https://github.com/romululz/yt-dlp-music.git
```

```
mv ~/yt-dlp-music/yt-dlp-music ~/.local/bin/
```

```
rm -rf ~/yt-dlp-music
```

```
chmod +x ~/.local/bin/yt-dlp-music
```

```
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Usage

```
yt-dlp-music "https://music.youtube.com/watch?v=lYBUbBu4W08&si=oxG_6Wv5d9pKLi4O"
```
For best results, it is recommended to download music from YouTube Music (music.youtube.com).

The script uses ```yt-dlp``` to download the audio and thumbnail, converts the audio to FLAC, then uses ```magick``` to convert and crop the 16:9 thumbnail to a more cover-like 1:1 square. Finally, ```metaflac``` is used to embed the cropped image as album art into the FLAC file.

Sometimes yt-dlp pauses on "[EmbedThumbnail]", just press enter if this happens.

All music is downloaded to ~/Music/ to change this edit

```
~/.local/bin/yt-dlp-music
```

and change --output to your liking.



