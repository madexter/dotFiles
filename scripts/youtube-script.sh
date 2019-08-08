#!/bin/bash

# Consider using a alias to your script on your .bashrc, .zshrc or .profile
# Or simple add your path's script to your $PATH variable
# Depencies: youtube-dl

echo "|========================================================================================|"
echo "| -> Automate youtube-dl to download mp3 files inside your own home: /home/$USER/Music <- |"
echo "|========================================================================================|"

usage() {
    echo "Youtube Download Script Tool"
    echo ""
    echo "Usage: youtube-script.sh <MUSIC_LINK>"
    echo ""
    echo "Example:"
    echo "youtube-script.sh https://www.youtube.com/watch\?v\=JuDEzsgNhv8"
}

if [ ! -d "/home/$USER/Music" ]; then
    echo "[!] Music directory don't exist. Then, creating one inside your home directory"
    bash -c "mkdir /home/$USER/Music"
    echo "[+] Music directory created succesfully!"
    echo "=========================================================="
    echo ""
fi

if [ ! -z "$1" ]; then
    (cd /home/$USER/Music ; youtube-dl --verbose --buffer-size 1024 \
        --extract-audio --audio-format mp3 $1)
        #echo -e "[+] Created the output file: /tmp/$$\n[+] Also created the error file: /tmp/x$$")
else
    echo "[-] You didn't inserted an argument! Look the usage below!"
    echo "=========================================================="
    echo ""
    usage
fi
