#!/bin/bash

if [ "$1" == "" ]
then
	echo -e "\e[1;41;1;45m +++PASSE O SITE COMO ARGUMENTO+++\e[0m"
else
	echo -e "\e[1;41;1;45m directors do robots.txt\e[0m"
	lynx --dump "$1/robots.txt"  2> /dev/null | grep -v "#" 

fi

