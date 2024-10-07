# filename: ex307.py

import hashlib
m = hashlib.sha1()
m.update("richard49@hotmail.com".encode('utf-8'))
print(m.hexdigest())