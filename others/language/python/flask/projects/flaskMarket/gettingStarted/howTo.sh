# how to flaskMarket

# install
pip3 install flask flask_sqlalchemy

# export
#export FLASK_APP=market.py
export FLASK_APP=run.py
export FLASK_DEBUG=1

# run app
# http://127.0.0.1:5000
cd flaskMarket
flask run --host=0.0.0.0

# play with db
python3

from market.models import db
# db.drop_all() # delete previous database
db.create_all()

from market.models import User, Item

# users
u1 = User(username='jsc', password_hash='123456', email_address='jsc@jsc.com')
db.session.add(u1)
db.session.commit()
User.query.all()

# items
item1 = Item(name='IPhone 10', price=500, barcode='893212299897', description='Phone')
item2 = Item(name='Laptop', price=600, barcode='123985473165', description='Simple Laptop')
item3 = Item(name='Keyboard', price=600, barcode='231985128446', description='Any Keyboard')

db.session.add(item1)
db.session.add(item2)
db.session.add(item3)
db.session.commit()

# query
Item.query.all()

# iterate
for item in Item.query.all():
    item.name
    item.price

for item in Item.query.filter_by(price=500):
    item.name
    item.price

item1 = Item.query.filter_by(name='IPhone 10').first()
item1.owner = User.query.filter_by(username='jsc').first().id
# db.session.rollback()
db.session.add(item1)
db.session.commit()

item1.owner

i = Item.query.filter_by(name='IPhone 10').first()
i.owned_user
exit()

# install
pip3 install flask-wtf wtforms

# generate secret key
import os
os.urandom(12).hex()

# install
pip3 install email_validator
