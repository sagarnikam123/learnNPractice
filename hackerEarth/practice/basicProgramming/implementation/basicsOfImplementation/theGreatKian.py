# The Great Kian

#######################################################################################################################
#
#   The great Kian is looking for a smart prime minister. He's looking for a guy who can solve the OLP
#   (Old Legendary Problem). OLP is an old problem (obviously) that no one was able to solve it yet (like P=NP).
#   But still, you want to be the prime minister really bad. So here's the problem:
#   Given the sequence a1, a2, ..., an find the three values a1 + a4 + a7 + ..., a2 + a5 + a8 + ... and
#   a3 + a6 + a9 + ... (these summations go on while the indexes are valid).
#
#   Input
#   The first line of input contains a single integer n (1  <=  n  <=  10^5).
#   The second line contains n integers a1, a2, ..., an separated by space (1  <=  ai  <=  109^).
#
#   Output
#   Print three values in one line (the answers).
#
#   SAMPLE INPUT
#   5
#   1 2 3 4 5
#
#   SAMPLE OUTPUT
#   5 7 3
#
#######################################################################################################################

n = int(input().strip())
phogat = [int(x) for x in input().strip().split()]
chindwad = [0] * 3

def changul(p, nuclide):
    chilki = p + 3
    while chilki < n:
        nuclide += phogat[chilki]
        chilki += 3
    chindwad[p] = nuclide

if n < 3:
    zq = n
else:
    zq = 3

for dangal in range(zq):
    changul(dangal, phogat[dangal])

print(chindwad[0],chindwad[1],chindwad[2])
