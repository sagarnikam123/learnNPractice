# 7_propertiesAndInheritance

from shipping7 import *
c = ShippingContainer7.create_empty('YML', length_ft=20)
c.volume_ft3

from shipping7 import *
r = RefrigeratedShippingContainer.create_empty('YML', length_ft=20, celsius=10.0)
r.volume_ft3

from shipping7 import *
h1 = HeatedRefrigeratedShippingContainer.create_empty('YML', length_ft=40, celsius=-18.0)
h1.volume_ft3
h1.celsius = -21.0

h2 = HeatedRefrigeratedShippingContainer.create_empty('YML', length_ft=40, celsius=-25.0)

from shipping7 import *
h4 = HeatedRefrigeratedShippingContainer.create_empty('YML', length_ft=40, celsius=-18.0)
h4.celsius = 10
h4.celsius = -26
h4.fahrenheit = -14.0
