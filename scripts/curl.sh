#!/usr/bin/bash

# Consider using a alias to your script on your .bashrc, .zshrc or .profile
# Or simple add your path's script to your $PATH variable
# Depencies: curl.sh

echo "|===================================|"
echo "| -> Automate script to use CURL <- |"
echo "|===================================|"

usage() {
    echo "CURL Automate Script Tool"
    echo ""
    echo "Usage: ./curl.sh <URL>"
    echo ""
    echo "Example:"
    echo "curl.sh https://www.google.com"
}

if [ -n "$1" ] 
then
   echo ""
   echo "=============================================================================="
   echo "[+] Doing the CURL command on the host: $1"
   echo "=============================================================================="
   echo ""
   for method in GET POST PUT TRACE CONNECT OPTIONS PROPFIND; do echo ""; echo "METHOD: $method"; curl -X $method -I $1; echo "==================================================";  done
else
   echo ""
   echo "==========================================="
   echo "[-] Please insert a host as an argument!"
   echo "==========================================="
   echo ""
   usage
fi
