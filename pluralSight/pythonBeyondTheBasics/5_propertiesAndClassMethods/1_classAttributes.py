# 05_01-Class Attributes

from shipping import ShippingContainer

c1 = ShippingContainer('YML', 'books')
c1.owner_code
c1.contents

c3 = ShippingContainer('MAE', 'tools')

c2 = ShippingContainer('MAE', 'clothes')
c2.contents

from shipping import *

c4 = ShippingContainer('ESC', 'electronics')
c4.serial

c5 = ShippingContainer('ESC', 'pharmaceuticals')
c5.serial

c6 = ShippingContainer('ESc', 'noodles')
c6.serial

ShippingContainer.next_serial
c5.next_serial
