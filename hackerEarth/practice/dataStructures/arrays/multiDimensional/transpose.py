# Transpose

#######################################################################################################################
#
#   Given a 2D array A, your task is to convert all rows to columns and columns to rows.
#
#   Input:
#   First line contains 2 space separated integers, N- total rows, M - total columns.
#   Each of the next N lines will contain M space separated integers.
#
#   Output:
#   Print M lines each containing N space separated integers.
#
#   Constraints:
#   1 <= N <= 10
#   1 <= M <= 10
#   0 <= A[i][j] <= 100 where 1 <= i <= N and 1 <= j <= M
#
#   SAMPLE INPUT
#   3 5
#   13 4 8 14 1
#   9 6 3 7 21
#   5 12 17 9 3
#
#   SAMPLE OUTPUT
#   13 9 5
#   4 6 12
#   8 3 17
#   14 7 9
#   1 21 3
#
#######################################################################################################################

rowdy, conty = tuple(input().strip().split(' '))

mastachNa = []

# converting to int
rowdy = int(rowdy)
conty = int(conty)

for sidbi in range(rowdy):
    mastachNa.append(input().strip().split(' '))

for i in range(conty):
    for j in range(rowdy):
        print(mastachNa[j][i],' ',sep='',end='')
    print()
