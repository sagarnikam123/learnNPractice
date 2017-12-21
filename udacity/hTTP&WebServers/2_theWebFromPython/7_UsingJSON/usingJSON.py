# using JSON

import json
import requests
a = requests.get('http://swapi.co/api/people/1/')
a
a.text
a.content
a.json()
a.json()['name']
a = requests.get('http://udacity.com/')
namelia = requests.get('http://uinames.com/api')
