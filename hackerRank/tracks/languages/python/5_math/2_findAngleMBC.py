# Find Angle MBC

#######################################################################################################################
#
#   ABC is a right triangle 90 at B.
#   Therefore, <_ ABC = 90.
#
#   Point M is the midpoint of hypotenuse AC.
#
#   You are given the lengths AB and BC.
#   Your task is to find <_ MBC (angle 0, as shown in the figure) in degrees.
#
#   Input Format
#   The first line contains the length of side AB.
#   The second line contains the length of side BC.
#
#   Constraints
#   0 < AB <= 100
#   0 < BC <= 100
#   Lengths AB and BC are natural numbers.
#
#   Output Format
#   Output <_ MBC in degrees.
#   Note: Round the angle to the nearest integer.
#
#   Examples:
#   If angle is 56.5000001°, then output 57°.
#   If angle is 56.5000000°, then output 57°.
#   If angle is 56.4999999°, then output 56°.
#   0 < 0 < 90
#
#   Sample Input
#   10
#   10
#
#   Sample Output
#   45°
#
#   NOTE: Python 3 is disabled for this challenge.
#
#######################################################################################################################

ab = int(input().strip())
bc = int(input().strip())

print()
