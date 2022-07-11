#!/bin/bash

echo -e "\e[1;31;43mEscolha a opção a baixo\e[0m"
echo -e "\e[33mTem gobuster instalado?\e[0m"
echo -e "\e[31m1= Sim\e[0m"
echo -e "\e[31m2= Não\e[0m"
echo -e -n "\e[36m--->\e[0m";read escolher

if [ $escolher == 1 ];then
	clear
fi

if [ $escolher == 2 ];then

	sudo apt install gobuster -y;
	echo -n "Gobuster instalado version ="; gobuster version
	sleep 2
	clear
fi


echo -e "\e[33m       @@@@@@@@          @@@@\e[0m"
echo -e "\e[33m       @@@        @@     @@@@@@@\e[0m"
echo -e "\e[33m       @@           @@  @@@      @@\e[0m"
echo -e "\e[33m       @@            @@@          @@\e[0m"
echo -e "\e[33m         @@                        @@\e[0m"
echo -e "\e[33m   @@@@@@      @@@@@           @@\e[0m"
echo -e "\e[33m @@@@@@@@@  @@@@@@@         @@\e[0m"
echo -e "\e[33m @@            @@@@@@@@       @@\e[0m"
echo -e "\e[33m@@            @@@@@@@@@     @@\e[0m"
echo -e "\e[33m@@            @@@@@@@@   @@@\e[0m"
echo -e "\e[33m@@@           @@@@@@@      @@\e[0m"
echo -e "\e[33m @@@@          @@@@@        @@\e[0m"
echo -e "\e[33m   @@@@@@                      @@\e[0m"
echo -e "\e[33m        @@                        @@\e[0m"
echo -e "\e[33m       @@           @@          @@\e[0m"
echo -e "\e[33m       @@@        @@@@@@@@@@@@\e[0m"
echo -e "\e[33m        @@@     @@@_@@@@@@@@\e[0m"
echo -e "\e[33m         @@@@@@@@ @@@@@@\e[0m"
echo -e "\e[33m           @@@@@ @\e[0m"
echo -e "\e[32m                  @\e[0m"
echo -e "\e[32m                   @\e[0m"
echo -e "\e[32m                    @\e[0m"
echo -e "\e[32m                     @\e[0m"
echo -e "\e[32m                     @  @@@\e[0m"
echo -e "\e[32m              @@@@  @  @   @@\e[0m"
echo -e "\e[32m             @       @@@    @@\e[0m"
echo -e "\e[32m             @@@@    @  @@\e[0m"
echo -e "\e[32m                     @\e[0m"
echo -e "\e[32m                    @\e[0m"

echo -e "\e[32mGit = https://github.com/ticofookfook\e[0m"

	echo""
	echo -e "\e[1;31;43mBRUTE FORCE DE DIRETORIOS\e[0m"
	echo""
	echo -e -n "\e[36mPasse a Wordlist ---->:\e[0m"; read lista
	echo -e -n "\e[36mPasse o site Completo ex: http://exemplo.com --->:\e[0m"; read site
	echo -e "\e[36mTransformar a lista em base 64? \e[0m"
		echo -e "\e[31m1 = Sim \e[0m"
		echo -e "\e[31m2 = Não \e[0m"





	echo -e -n "\e[32mOpção -->:\e[0m"; read -n1 OPCAO
	receber=$(for i in $(cat $lista);do echo -n $i | base64 ; done > listahash1.txt)

	case $OPCAO in 

		1)
		echo -e "\e[1;31;43mRODANDO....\e[0m "
		gobuster dir -u $site -w listahash1.txt -q -b 403,404
		rm -rf listahash1.txt
		;;
		
		
		
		2)
		echo -e "\e[1;31;43mRODANDO....\e[0m "
		gobuster dir -u $site -w $lista -q -b 403,404
		;;
		
		
		*)
		
		echo""
		echo -e "\e[46mEscolha a Opção correta\e[0m"
		exit 0
		;;


esac



