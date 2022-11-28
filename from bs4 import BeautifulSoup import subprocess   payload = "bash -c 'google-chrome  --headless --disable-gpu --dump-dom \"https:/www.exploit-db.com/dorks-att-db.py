from bs4 import BeautifulSoup
import subprocess


payload = "bash -c 'google-chrome  --headless --disable-gpu --dump-dom \"https://www.exploit-db.com/google-hacking-database\" --virtual-time-budget=10000  | egrep \"tbody.*ghdb\" ' "

conteudo = subprocess.check_output(payload,shell=True,stderr=subprocess.DEVNULL)


soup = BeautifulSoup(conteudo,"html.parser")
linhas = soup.find_all('tr')
for tr in linhas:
    texto = tr.find_all('td')[1].get_text()
    print(texto)
