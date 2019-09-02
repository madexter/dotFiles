#!/usr/bin/bash

usage() {
    echo ""
    echo "URL Analyzer"
    echo "./parseurl.sh URL1 URL2 ..."
}

echo "|======================================|"
echo "| -> Automate script to parse URL's <- |"
echo "|======================================|"

if [ -z $1 ]; then
    usage
else
    echo "[+] You give $# URL(s)!"
    echo "[+] Analyzing..."
    
    for i in "$@"
    do
        wget -qO - $i | grep href | cut -d "/" -f3 | grep "\." | cut -d '"' -f1 | 
            grep -v "<li" | grep -v "top.location.href" | grep -v "return" | 
            grep -v "javascript" | sort -u > lista_url_"$i".txt
    done

    for url in $(cat lista_url_*); do host $url; done | grep "has address" 
fi
