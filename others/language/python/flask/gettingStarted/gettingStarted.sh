# Flask - getting started

################################################################################
# install virtualenv
pip3 install virtualenv
pip3 install -U --force-reinstall virtualenv
################################################################################
# create venv & activate
virtualenv flask_env
source flask_env/bin/activate
################################################################################
# install flask & related packages
pip3 install flask flask-sqlalchemy
################################################################################
# add flask code
touch app.py

# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello World'

if __name__ == '__main__':
    app.run(debug=True)
################################################################################
# run flask app
# http://127.0.0.1:5000
python3 app.py
################################################################################
