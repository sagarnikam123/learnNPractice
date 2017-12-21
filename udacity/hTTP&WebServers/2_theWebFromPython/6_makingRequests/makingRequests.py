# making requests

#install
pip3 install requests

import requests
requests.get('http://localhost:8000')

a = requests.get('http://www.udacity.com')
a
type(a)

a.text
a. content

# Handling errors
r = requests.get('http://bad.example.com/')
r = requests.get('http://google.com/ThisDoesNotExist')
