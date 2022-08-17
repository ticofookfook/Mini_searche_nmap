#!/bin/bash

echo -e '\e[35;5m[+]limpando rastros[+]\e[0m'

a=$(echo '' > /var/log/alternatives.log.*)
b=$(echo '' > /var/log/kern.log.*)
c=$(echo '' > /var/log/daemon.log.*)
d=$(echo '' > /var/log/auth.log.*)
e=$(echo '' > /var/log/fontconfig.log.*)
f=$(echo '' > /var/log/boot.log)
g=$(echo '' > /var/log/dpkg.log.*)
h=$(echo '' > /var/log/lastlog.*)
i=$(echo '' > /var/log/messages.*)
j=$(echo '' > /var/log/user.log.*)

m=$(echo '' > /var/log/apache2/access.log)
n=$(echo '' > /var/log/apache2/error.log)
o=$(echo '' > /var/log/apache2/other_vhosts_access.log)

echo -e "\e[36mLimpo --->\e[0m""/var/log/alternatives.log.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/kern.log.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/daemon.log.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/auth.log.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/fontconfig.log.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/boot.log"
echo -e "\e[36mLimpo --->\e[0m""/var/log/dpkg.log.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/lastlog.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/messages.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/user.log.*"
echo -e "\e[36mLimpo --->\e[0m""/var/log/apache2/access.log"
echo -e "\e[36mLimpo --->\e[0m""/var/log/apache2/error.log"
echo -e "\e[36mLimpo --->\e[0m""/var/log/apache2/other_vhosts_access.log"

echo ""
echo -e "\e[36mDeseja limpar o  zsh_history \e[0m"
echo -e "\e[32m[1] Sim\e[0m"
echo -e "\e[33m[2] Não\e[0m"
echo -ne "\e[36-->\e[0m "
read  -p 'Opção:' OPCAO 

case $OPCAO in

	1) 
echo "" > /home/stephan/.zsh_history
echo -e "\e[36mLimpo --->\e[0m""/home/stephan/.zsh_history"
	;;
	2)
	exit
	;;
esac
