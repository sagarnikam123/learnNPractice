# HTTP GET requests

ncat 127.0.0.1 8000
GET / HTTP/1.1
Host: localhost

ncat google.com 80
GET / HTTP/1.1
Host: google.com
