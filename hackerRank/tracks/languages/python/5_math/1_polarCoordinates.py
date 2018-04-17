# Polar Coordinates

#######################################################################################################################
#
#   Polar coordinates are an alternative way of representing Cartesian coordinates or Complex Numbers.
#
#   A complex number z (diagram)
#   is completely determined by its real part x and imaginary part y.
#   Here, j is the imaginary unit.
#
#   A polar coordinate (r, PhiSign) (diagram)
#
#   is completely determined by modulus r and phase angle PhiSign.
#
#   If we convert complex number z to its polar coordinate, we find:
#   r : Distance from z to origin, i.e.,Sqrt(x^2 + y^2)
#   PhiSign : Counter clockwise angle measured from the positive x-axis to the line segment that joins z to the origin.
#
#   Python's cmath module provides access to the mathematical functions for complex numbers.
#
#   cmath.phase
#   This tool returns the phase of complex number z (also known as the argument of z).
#   >>> phase(complex(-1.0, 0.0))
#   3.1415926535897931
#
#   abs
#   This tool returns the modulus (absolute value) of complex number z.
#   >>> abs(complex(-1.0, 0.0))
#   1.0
#
#   Task
#   You are given a complex z. Your task is to convert it to polar coordinates.
#
#   Input Format
#   A single line containing the complex number z.
#
#   Output Format
#   Output two lines:
#   The first line should contain the value of r.
#   The second line should contain the value of PhiSign.
#
#   Sample Input
#     1+2j
#
#   Sample Output
#    2.23606797749979
#    1.1071487177940904
#
#   Note: The output should be correct up to 3 decimal places.
#
#######################################################################################################################

import cmath

ghoda = input().strip()
if '+' in ghoda:
    hi = ghoda.split('+')
else :
    hi = ghoda.split('-')
print(hi)
#x = int(hi[0])
#y = int(hi[1][0])
#
#r = str(cmath.sqrt(x**2 + y**2))
#print(r[1: len(r) - 4])
#print(cmath.phase(complex(x, y)))
