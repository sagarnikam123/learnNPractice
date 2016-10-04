# Biased Chandan

#######################################################################################################################
#
#   Chandan is an extremely biased person, and he dislikes people who fail to solve all the problems in the
#   interview he takes for hiring people. There are n people on a day who came to be interviewed by Chandan.
#   Chandan rates every candidate from 0 to 10. He has to output the total ratings of all the people who came in
#   a day. But, here's the problem: Chandan gets extremely frustrated when someone ends up scoring a 0 in the
#   interview. So in frustration he ends up removing the candidate who scored that 0, and also removes the candidate
#   who came before him. If there is no candidate before the one who scores a 0, he does nothing.
#   You've to find the summation of all the ratings in a day for Chandan.
#
#   Input constraints:
#   The first line of input will contain an integer — n. The next n lines will contain an integer, where the ith
#   integer represents the rating of the ith person.
#
#   Output constraints:
#   Print the required sum.
#
#   Constraints:
#   1 <= n  <= 5 * 103
#   0 <= Value of ratings <= 10
#
#   SAMPLE INPUT
#   5
#   2
#   3
#   0
#   7
#   0
#
#   SAMPLE OUTPUT
#   2
#
#######################################################################################################################

n = int(input().strip())

sahara = [0]*n

for apoptosis in range(n):
    kiKara = int(input().strip())
    if kiKara == 0 and apoptosis > 0:
        sahara[apoptosis-1] = 0
    else:
        sahara[apoptosis] = kiKara

kinchali = 0
for x in sahara:
    kinchali += x

print(kinchali)
