# 05_04-Static Methods With Inheritance

from shipping4 import *
r1 = RefrigeratedShippingContainer('MAE', 'fish')
r1.bic
ShippingContainer4._make_bic_code('MAE',1234)
RefrigeratedShippingContainer._make_bic_code('MAE', 1234)
c = ShippingContainer4('ESC','textiles')
c._make_bic_code('MAE',1234)
r = RefrigeratedShippingContainer('ESC','peas')
r._make_bic_code('MAE',1234)

from shipping4 import *
r2 = RefrigeratedShippingContainer('MAE','fish')
r2.bic
