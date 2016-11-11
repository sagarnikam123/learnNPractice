# Sort the Substring

#######################################################################################################################
#
#   Given a string S, and two numbers N, M - arrange the characters of string in between the indexes N and M
#   (both inclusive) in descending order. (Indexing starts from 0).
#
#   Input Format:
#   First line contains T - number of test cases.
#   Next T lines contains a string(S) and two numbers(N, M) separated by spaces.
#
#   Output Format:
#   Print the modified string for each test case in new line.
#
#   Constraints:
#   1 <= T <= 1000
#   1 <= |S| <= 10000 // |S| denotes the length of string.
#   0 <= N <= M < |S|
#   S ∈ [a,z]
#
#   SAMPLE INPUT
#   3
#   hlleo 1 3
#   ooneefspd 0 8
#   effort 1 4
#
#   SAMPLE OUTPUT
#   hlleo
#   spoonfeed
#   erofft
#
#######################################################################################################################

nT = int(input().strip())

for timeSeries in range(nT):
    kamli, n, m = input().strip().split()
    pre = kamli[0:int(n)]
    post = kamli[int(m)+1:len(kamli)+1]
    z = kamli[int(n):int(m)+1]
    x = list(z)
    x.sort()
    x.reverse()
    p = ''.join(x)
    print(pre,p,post,sep='')
