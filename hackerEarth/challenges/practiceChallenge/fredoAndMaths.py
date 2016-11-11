# Fredo and Maths

#######################################################################################################################
#
#   Fredo was just going through his Maths book when he encountered a question which says:
#   Given three numbers x,k and m, you need to find the value of (x^x)^x....^x %m where number of x's in the
#   expression are k. That is, if x=5,k=3 and m=3, then you need to compute 5^5^5 % 3.
#   Fredo is able to do the task for small values of x,k and m but not for large values.
#   So, he asks you to write a program to do the same task.
#
#   Input Format:
#   First line consists of an integer T denoting the number of test cases.
#   Each of the next T lines consist of three integers x,k and m.
#
#   Output Format:
#   Print the answer for each test case in a separate line.
#
#   Constraints:
#   1 <= T <= 10^5
#   1 <= m <= 10^7
#   1 <= k <= 10^18
#   m < x <= 10^8 x is always a prime number
#
#   SAMPLE INPUT
#   2
#   5 1 3
#   5 2 3
#
#   SAMPLE OUTPUT
#   2
#   2
#
#   Explanation
#   Case 1: 5 % 3=2
#   Case 2:5^5 % 3 = 3125 % 3 = 2
#
#######################################################################################################################

nT = int(input().strip())

for commonJar in range(nT):
    x, k, m = list(map(int, input().strip().split()))
    krishnaKumar = x
    for j in range(k):
        krishnaKumar += pow(krishnaKumar,x)
    print(krishnaKumar % 3 )
