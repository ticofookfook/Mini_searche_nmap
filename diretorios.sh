#!/bin/bash

echo -e "\e[36m░█▀▀░░░▀█▀░░░█▀▀░░░█░█░░░█▀▀░░░█▀█\e[0m"
echo -e "\e[36m░▀▀█░░░░█░░░░█▀▀░░░▀▄▀░░░█▀▀░░░█░█\e[0m"
echo -e "\e[36m░▀▀▀░░░░▀░░░░▀▀▀░░░░▀░░░░▀▀▀░░░▀░\e[0m"


echo""
echo "SITE: "

read site

lynx --dump "https://web.archive.org/cdx/search/cdx?url=$site/*&output=text&fl=original&collapse=urlkey" | grep -v "css"  | grep "http://"
