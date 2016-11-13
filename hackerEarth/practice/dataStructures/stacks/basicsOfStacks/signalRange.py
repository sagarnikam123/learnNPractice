# Signal Range

#######################################################################################################################
#
#   Various signal towers are present in a city.Towers are aligned in a straight horizontal line(from left to right)
#   and each tower transmits a signal in the right to left direction.Tower A shall block the signal of Tower B
#   if Tower A is present to the left of Tower B and Tower A is taller than Tower B. So,the range of a signal of
#   a given tower can be defined as :
#   {(the number of contiguous towers just to the left of the given tower whose height is less than or equal to
#   the height of the given tower) + 1}.
#   You need to find the range of each tower.
#
#   INPUT
#
#   First line contains an integer T specifying the number of test cases.
#   Second line contains an integer n specifying the number of towers.
#   Third line contains n space separated integers(H[i]) denoting the height of each tower.
#
#   OUTPUT
#   Print the range of each tower (separated by a space).
#
#   Constraints
#   1 <= T <= 10
#   2 <= n <= 10^6
#   1 <= H[i] <= 10^8
#
#   SAMPLE INPUT
#   1
#   7
#   100 80 60 70 60 75 85
#
#   SAMPLE OUTPUT
#   1 1 1 2 1 4 6
#
#   Explanation
#   6th tower has a range 4 because there are 3 contiguous towers(3rd 4th and 5th towers) just to the left of
#   the 6th tower whose height is less than height of 6th tower.
#
#######################################################################################################################

nT = int(input().strip())

for nt in range(nT):
    nTowers = int(input().strip())
    toweliaScore = [0] * nTowers

    rangeHills =[int(x) for x in input().strip().split()]
    for failed in range(nTowers-1,-1, -1):
        #print(rangeHills[failed])
        singleTag = 1
        for redRash in range(failed -1, -1, -1):
            if rangeHills[redRash] < rangeHills[failed]:
                singleTag +=1
            else:
                break
        toweliaScore[failed] = singleTag
    print(' '.join(map(str,toweliaScore)))
