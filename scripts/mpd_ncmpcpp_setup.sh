#!/bin/bash

echo ""
echo "Automate setup mpd/ncmpcpp to be usable"
echo ""

if [ ! -d "/home/$USER/Music" ]; then
    echo "[!] Music file don't exist. Then, creating one inside your home directory"
    bash -c "mkdir /home/$USER/Music"
    echo "[+] Music file created succesfully!"
    echo "=========================================================="
    echo ""
fi

if [ ! -d "/home/$USER/.config/mpd" ]; then
    echo "[!] MPD directory don't exist. Then, creating one inside your $HOME/.config directory!"
    bash -c "mkdir -p /home/$USER/.config/mpd"
    echo "[+] MPD directory created succesfully!"
    echo "[+] Creating MPD archives inside your /home/$USER/.config/mpd directory."
    bash -c "touch /home/$USER/.config/mpd/{database,log,pid,state,sticker.sql}"
    echo "=========================================================="
    echo ""
fi

if [ ! -d "/home/$USER/.config/ncmpcpp"]; then
    echo "[!] Music file don't exist. Then, creating one inside your home directory"
    bash -c "mkdir /home/$USER/Music"
    echo "[+] Music file created succesfully!"
    echo "=========================================================="
    echo ""
fi
