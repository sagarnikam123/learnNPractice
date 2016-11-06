# 05_03-Class Methods

c1 = ShippingContainer3('JAK', 'zoli')
c1._get_next_serial()
ShippingContainer3._get_next_serial()

from shipping3 import *
c7 = ShippingContainer3.create_empty('YML')
c7
c7.contents

from shipping3 import *
c8 = ShippingContainer3('MAE', ['food','textiles','minerals'])
c8.contents

from shipping3 import *
c = ShippingContainer3.create_empty('YML')
c.bic
