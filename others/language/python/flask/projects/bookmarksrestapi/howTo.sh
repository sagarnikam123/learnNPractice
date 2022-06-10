

# install
pip3 install virtualenv

mkdir bookmarksrestapi
cd bookmarksrestapi

python3 -m virtualenv venv
source venv/bin/activate
#deactivate
python --version

# export
export FLASK_APP=src
export FLASK_DEBUG=1

# url
127.0.0.1:5000/api/v1/auth/me

#  create db
flask shell
from src.database import db
db.create_all()
db.drop_all()
db.create_all()
