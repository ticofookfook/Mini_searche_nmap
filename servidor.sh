#!/bin/bash

echo "INFORME A PORTA!":    
read porta


echo -e "\e[36m░█▀▀░░░▀█▀░░░█▀▀░░░█░█░░░█▀▀░░░█▀█\e[0m"
echo -e "\e[36m░▀▀█░░░░█░░░░█▀▀░░░▀▄▀░░░█▀▀░░░█░█\e[0m"
echo -e "\e[36m░▀▀▀░░░░▀░░░░▀▀▀░░░░▀░░░░▀▀▀░░░▀░\e[0m"



res=$(ifconfig eth0  | head -2 | grep -v "eth0" | sed 's/inet/ /g' | sed 's/netmask 255.255.*//g'   2>/dev/null)
res1=$(ifconfig tun0  | head -2 | grep -v "tun0" | sed 's/inet/ /g' | sed 's/netmask 255.255.*//g'  2>/dev/null)
ippub=$(wget -qO - icanhazip.com 2>/dev/null )

echo -e "\e[31m++++++++++++++++++++++++++++++++\e[0m"
echo       'IP PUBLICO ------->'  http://$ippub:$porta/
echo -e "\e[31m++++++++++++++++++++++++++++++++\e[0m"

echo -e "\e[32m++++++++++++++++++++++++++++++++\e[0m"
echo       'IP LOCAL -------->'  http://$res:$porta/
echo -e "\e[32m++++++++++++++++++++++++++++++++\e[0m"

echo -e "\e[34m++++++++++++++++++++++++++++++++\e[0m"
echo      'VPN ------->'  http://$res1:$porta/
echo -e "\e[34m++++++++++++++++++++++++++++++++\e[0m"

python3 -m  http.server $porta


