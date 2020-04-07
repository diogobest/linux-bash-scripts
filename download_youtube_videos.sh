#!/bin/bash
# execute the script with sudo/root permissions, on the first time.

echo "------------------------"
echo 'Installing dependecies: youtube-dl'
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
echo "------------------------"

read -p 'Digite o link do youtube que você quer salvar: ' link_youtube

youtube-dl $link_youtube
