clear
echo  istalar yoump3
echo agarde, vai demorar, muito
sudo apt-get install youtube-dl
sudo apt-get install python-pip
sudo pip install youtube-dl
sudo pip install --upgrade youtube-dl
sudo apt-get install -y libav-tools
echo sudo youtube-dl -o "/home/%(title)s.%(ext)s" -x --audio-format mp3 $* >/bin/you-mp3
sudo chmod 777 /bin/you-mp3
