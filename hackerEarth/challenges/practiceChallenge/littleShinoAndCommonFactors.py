# Little Shino and Common factors

#######################################################################################################################
#
#   Little Shino loves maths. Today her teacher gave her two integers. Shino is now wondering how many integers
#   can divide both the numbers. She is busy with her assignments. Help her to solve the problem.
#
#   Input:
#   First line of the input file contains two integers, a and b
#
#   Output:
#   Print the number of common factors of  a and b
#
#   Constraints:
#   1 <= a,b <= 10^12
#
#   SAMPLE INPUT
#   10 15
#
#   SAMPLE OUTPUT
#   2
#
#   Explanation
#   The common factors of 10 and 15 are 1 and 5.
#
#######################################################################################################################

a, b= [int(x) for x in input().strip().split()]

aKhel = set()
bKhel = set()

for j in range(1,a+1):
    if (a % j) == 0:
        aKhel.add(j)
for k in range(1, b+1):
    if (b % k) == 0:
        bKhel.add(k)

commonF = list(aKhel.intersection(bKhel))
print(len(commonF))
