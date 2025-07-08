# yt-dlp-music

Simple [yt-dlp](https://github.com/yt-dlp/yt-dlp) bash script that formats all audio to FLAC and automatically adds song metadata, including cover art. 



### Dependencies

```
sudo pacman -S yt-dlp ffmpeg python-mutagen git wget imagemagick flac
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

```yt-dlp``` is able to extract rich metadata (such as artist, album, track, and genre) directly from the video's JSON data on YouTube Music. You’ll also benefit from higher-quality and more faithful cover art, especially when downloading from official artist channels.
In contrast, regular YouTube videos only provide basic metadata like the video title and channel name. This may result in inaccurate filenames or missing tags but the script should still work.

Sometimes yt-dlp pauses on "[EmbedThumbnail]", just press enter if this happens.

All music is downloaded to ~/Music/ to change this edit 

```
~/.local/bin/yt-dlp-music
```

and change --output to your liking



