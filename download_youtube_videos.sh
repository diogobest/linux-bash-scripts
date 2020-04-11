#!/bin/bash
# Verify if youtube-dl is installed. Type is ok to use too, which shouldnt be
# used.
command -v youtube-dl
if [ $? -eq 1 ]; then
  echo "------------------------"
  echo 'Installing dependecies: youtube-dl'
  sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
  sudo chmod a+rx /usr/local/bin/youtube-dl
  echo "------------------------"
fi


download_one_video()
{
  read -p 'Paste a link to download: ' link_youtube
  youtube-dl $link_youtube
}

download_video_via_batch_file()
{
  read -p 'Paste route to file: ' batch_file
  youtube-dl -a $batch_file
}

download_playlist()
{
  read -p 'Paste route to file, example: ../teste: ' batch_file
  youtube-dl -yes-playlist $batch_file
}

while [  "$option" != 0 ]
do
  echo '----------------------------------------------------------------------'
  echo '                    Select number option'
  echo '----------------------------------------------------------------------'
  echo '[1] download one video'
  echo '[2] download videos via batch file'
  echo '[3] download playlist'
  echo '[0] Exit'
  read -p 'Select option: ' option
  case $option in
    1) download_one_video;;
    2) download_video_via_batch_file;;
    3) download_playlist;;
  esac
done
