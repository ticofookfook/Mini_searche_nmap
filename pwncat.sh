#!/bin/bash

echo -e "\e[37m         ︻╦̵̵̿╤─\e[0m"
echo -e "\e[32m	█۞███████]▄▄▄▄▄▄▄▄▄▄▃\e[0m" "\e[31m●●● \e[0m"
echo -e "\e[32m	▂▄▅█████████▅▄▃▂…\e[0m"
echo -e "\e[32m	[███████████████████]\e[0m"
echo -e "\e[37m	◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙ \e[0m"

echo -e "\e[45m				[+]ATENÇÃO[+]\e[0m"
echo -e "\e[32mInstalar o pwncat comands são -->\e[0m" "\e[36mapt install pwncat && pip install pwncat-cs\e[0m"
echo ''
echo ''

pegar=$(ifconfig tun0| grep 'inet'| grep -v 'inet6'| awk '{print $2}')
pegar2=$(wget -qO - icanhazip.com 2>/dev/null)
echo -e "\e[34mIp da vpn--> \e[0m"$pegar
echo -e "\e[34mIp Publico--> \e[0m"$pegar2
echo ''

echo -ne "\e[32mColoque o Ip -->:\e[0m"; read ip
echo -ne "\e[32mDigite a porta -->:\e[0m";read port


pwncat-cs --listen $ip --port $port
