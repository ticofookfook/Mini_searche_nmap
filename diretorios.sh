#!/bin/bash

echo -e "\e[36m░█▀▀░░░▀█▀░░░█▀▀░░░█░█░░░█▀▀░░░█▀█\e[0m"
echo -e "\e[36m░▀▀█░░░░█░░░░█▀▀░░░▀▄▀░░░█▀▀░░░█░█\e[0m"
echo -e "\e[36m░▀▀▀░░░░▀░░░░▀▀▀░░░░▀░░░░▀▀▀░░░▀░\e[0m"


echo""
echo "SITE: "

read site

recebe=$(lynx --dump "https://web.archive.org/cdx/search/cdx?url=$site/*&output=text&fl=original&collapse=urlkey" | grep -v "css"  | grep "http://")
echo -ne '\e[32m#####                     (30%)\r\e[0m'
sleep 0.5
echo -ne '\e[32m#############             (50%)\r\e[0m'
sleep 0.5
echo -ne '\e[32m#######################   (70%)\r\e[0m'
sleep 0.5
echo -ne '\e[32m#######################   (85%)\r\e[0m'
sleep 0.5
echo -ne '\e[32m#######################   (100%)\r\e[0m'
echo -ne '\n'

echo "\n$recebe"
