# how to flaskMarket

# export
export FLASK_APP=market.py
export FLASK_DEBUG=1

# run app
# http://127.0.0.1:5000
cd flaskMarket
flask run --host=0.0.0.0

# play with db
python3

from market import db
db.create_all()

from market import Item
item1 = Item(name='IPhone 10', price=500, barcode='893212299897', description='Phone')
db.session.add(item1)
db.session.commit()
Item.query.all()

item2 = Item(name='Laptop', price=600, barcode='123985473165', description='Simple Laptop')
item3 = Item(name='Keyboard', price=600, barcode='231985128446', description='Any Keyboard')
db.session.add(item2)
db.session.add(item3)
db.session.commit()
Item.query.all()

# iterate
for item in Item.query.all():
    item.name
    item.price

for item in Item.query.filter_by(price=500):
    item.name
    item.price

exit()
