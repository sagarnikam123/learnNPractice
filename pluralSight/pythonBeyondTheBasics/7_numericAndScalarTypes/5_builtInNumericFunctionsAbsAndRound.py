# 07_05-Built-In Numeric Functions abs() and round()

abs(-5)
abs(-5.0)

from decimal import Decimal
from fractions import Fraction
abs(Decimal(-5))
abs(Fraction(-5,1))
abs(complex(0,-5))

round(0.2812, 3)
round(0.625,1)
round(1.5)
round(2.5)
round(Decimal('3.25'), 1)
round(Fraction(57, 100), 2)
round(Fraction(47, 100), 1)
round(Fraction(57, 100), 1)
round(Fraction(57, 100), 0)
round(2.675, 2)
