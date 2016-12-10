# 07_03-Rational Numbers With the Fraction Type

from fractions import Fraction

two_thirds = Fraction(2,3)
two_thirds
four_fifths = Fraction(4,5)
four_fifths

# ZeroDivisionError: Fraction(5, 0)
Fraction(5,0)
Fraction(933262154439441526816992388562)
Fraction(0.5)
Fraction(0.1)

Fraction(Decimal('0.1'))
Fraction('22/7')

Fraction(2,3) + Fraction(4,5)
Fraction(2,3) - Fraction(4,5)
Fraction(2,3) * Fraction(4,5)
Fraction(2,3) / Fraction(4,5)
Fraction(2,3) // Fraction(4,5)
Fraction(2,3) % Fraction(4,5)

from math import floor
floor(Fraction('4/3'))
