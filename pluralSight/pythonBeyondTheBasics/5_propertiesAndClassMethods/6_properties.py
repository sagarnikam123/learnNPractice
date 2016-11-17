# 05_06-Properties

from shipping6 import *

r4 = RefrigeratedShippingContainer.create_with_items('YML', ['fish'], celsius = -18.0)
r4.celsius
# AttributeError: can't set attribute
r4.celsius = -5.0
