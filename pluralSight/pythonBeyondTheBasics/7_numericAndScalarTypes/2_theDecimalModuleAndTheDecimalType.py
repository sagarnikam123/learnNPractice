# 07_02-The Decimal Module and the Decimal Type

import decimal
decimal.getcontext()
decimal.Decimal(5)

from decimal import Decimal
Decimal(7)
Decimal('0.8')

Decimal('0.8') - Decimal('0.7')
Decimal(0.8) - Decimal(0.7)

decimal.getcontext().traps[decimal.FloatOperation] = True
# decimal.FloatOperation: [<class 'decimal.FloatOperation'>]
Decimal(0.8)
Decimal('0.8')
Decimal('0.8') > 0.7

a = Decimal(3)
b = Decimal('3.0')
c = Decimal('3.00')
a
b
c
a * 2
b * 2
c * 2

decimal.getcontext().prec = 6
d = Decimal('1.234567')
d
d + Decimal(1)

Decimal('Infinity')
Decimal('-Infinity')
Decimal('NaN')
Decimal('nan')
Decimal('nan') + Decimal('1.414')

(-7) % 3
Decimal(-7) % Decimal(3)

def is_odd(n):
    return n % 2 == 1

is_odd(2)
is_odd(-2)
is_odd(-3)
is_odd(2.0)
is_odd(3.0)
is_odd(-2.0)
is_odd(-3.0)

is_odd(Decimal(2))
is_odd(Decimal(3))
is_odd(Decimal(-2))
is_odd(Decimal(-3))

Decimal(-3) %  2
def is_odd(n):
    return n % 2 != 0

is_odd(Decimal(-3))
(-7) // 3
Decimal(-7) // Decimal(3)
Decimal('0.81').sqrt()
