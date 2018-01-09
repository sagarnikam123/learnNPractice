#installing requests
pip3 install requests

#installing httpbin & running as app on local
pip3 install httpbin
pip3 install gunicorn
gunicorn httpbin:app

# http://localhost:8000/
# http://127.0.0.1:8000/
