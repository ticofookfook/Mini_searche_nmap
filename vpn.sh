#!/bin/bash

echo -e "\e[1;41;1;45m[+]----> Removendo ..\e[0m"
echo""

sudo apt remove --purge openvpn -y --allow-change-held-packages;
sleep 2
echo""
echo""
echo -e "\e[1;41;1;45m[+]---->baixando A versão Certa\e[0m"
echo""
echo""
sudo wget http://sft.if.usp.br/debian/pool/main/o/openvpn/openvpn_2.5.1-3_amd64.deb ;
sleep 2
echo""
echo""
echo -e "\e[1;41;1;45m[+]----> Instalando\e[0m"
echo""
echo""
sudo apt install ./openvpn_*.deb ;
echo""
echo""
sleep 1
echo -e "\e[1;41;1;45m[+]----> Congelando a versão\e[0m"
echo""
echo""
sudo apt-mark hold openvpn ;
echo""
echo""
echo -e "\e[1;41;1;45m[+]----> Concluido :)\e[0m"
echo""
echo""

clear
sleep 1
echo""
echo -ne "\e[1;41;1;45m[+]versão atual e correta ---->\e[0m"; sudo openvpn --version | head -n 1 | awk '{print $1"\t"$2}'
