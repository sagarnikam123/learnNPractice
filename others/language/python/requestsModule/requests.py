# http://docs.python-requests.org/en/master/


# importing
import requests

# requests
# r - response object
r = requests.get('https://api.github.com/events')   # GET
r = requests.post('http://httpbin.org/post', data={'key':'value'})  # POST
r = requests.put('http://httpbin.org/put', data={'key' : 'value'})  # PUT
r = requests.delete('http://httpbin.org/delete')    # DELETE
r = requests.head('http://httpbin.org/get') # HEAD
