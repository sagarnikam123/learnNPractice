# 05_05-Class Methods With Inheritance

from shipping4 import *
r1 = RefrigeratedShippingContainer.create_empty('YML')
r1
r2 = RefrigeratedShippingContainer.create_with_items('YML', ['ice','peas'])
r2.contents

from shipping5 import *
r3 = RefrigeratedShippingContainer.create_with_items('ESC', ['brocolli', 'cauliflower','carrots'], celsius=2.0)
r3
r3.contents
r3.celsius
r3.bic
r3.celsius = 12.0
