#!/bin/bash

echo -e "\e[1;41;1;45m[+]COLOQUE O IP[+]\e[0m" 

read ip

echo -e "\e[1;41;1;45m[+]COLOQUE [-p-] SE QUISER VARRER TODAS AS PORTAS SE QUISER SO AS TOP 1000 DER UM ENTER![+]\e[0m"

read a

echo -e "\e[1;41;1;45m[+]SE QUISER A VERSÃO DOS SYSTEMA COLOQUE [V] OU [C] PARA RODAR SCRIPTS [+]\e[0m"

read c
nmap -v -sS$c --open -Pn $a -D RND:20  $ip;



