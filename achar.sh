#!/bin/bash
if ["$1" == ""]
then
	echo -e "\e[1;41;1;45m<<<<<<<<<<<<<<<<<<<<<<<COLOQUE O SCRIPT DO NMAP QUE DESEJA ACHAR!!>>>>>>>>>>>>>>>>>>>>>>>>>>>\e[0m"
else
        echo -e "\e[1;41;1;45m SCCRIPTS DO NMAP! :)\e[0m";
	grep $1 /usr/share/nmap/scripts/script.db;
	echo -e "\e[1;41;1;45m OBRIGADO POR USAR O MEU MINI SCRIPT :)\e[0m";

fi

