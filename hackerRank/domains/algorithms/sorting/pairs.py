# Pairs

#######################################################################################################################

Given N integers, count the number of pairs of integers whose difference is K.

Input Format
The first line contains N and K.
The second line contains N numbers of the set. All the N numbers are unique.

Output Format
An integer that tells the number of pairs of integers whose difference is K.

Constraints:
N <= 10^5
0 < K < 10^9
Each integer will be greater than 0 and at least K smaller than 2^31 -1.

Sample Input
5 2
1 5 3 4 2

Sample Output
3

Explanation
There are 3 pairs of integers in the set with a difference of 2.

#######################################################################################################################

#!/usr/bin/py

# Head ends here
def pairs(a,k):
    # a is the list of numbers and k is the difference value

    answer = 0
    return answer

# Tail starts here
if __name__ == '__main__':
    a = input().strip()
    a = list(map(int, a.split(' ')))
    _a_size=a[0]
    _k=a[1]
    b = input().strip()
    b = list(map(int, b.split(' ')))
    print(pairs(b,_k))
