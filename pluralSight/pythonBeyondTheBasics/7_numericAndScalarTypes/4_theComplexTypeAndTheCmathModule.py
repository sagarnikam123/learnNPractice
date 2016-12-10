# 07_04-The Complex Type and the cmath Module

2j
2 + 4j
3 + 4j
type(3 + 4j)
complex(3)
complex(-2,3)
complex('(-2+3j)')
complex('2+3j')
complex('-2+3j')
# ValueError: complex() arg is a malformed string
complex('-2 + 3j')

c = 3 +5j
c.real
c.imag
c.conjugate()

import math
# ValueError: math domain error
math.sqrt(-1)

import cmath
cmath.sqrt(-1)

cmath.phase(1+1j)
abs(1+1j)
cmath.polar(1+1j)
modulus, phase = cmath.polar(1+1j)
modulus
phase
cmath.rect(modulus, phase)

def inductive(ohms):
    return complex(0.0, ohms)

def capacitive(ohms):
    return complex(0.0, -ohms)

def resistive(ohms):
    return complex(ohms)

def impedance(components):
    z = sum(components)
    return z

impedance([inductive(10), resistive(10), capacitive(5)])
cmath.phase(_)
math.degrees(_)
