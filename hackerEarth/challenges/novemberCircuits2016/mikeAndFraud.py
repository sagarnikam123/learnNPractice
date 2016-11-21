# Mike and Fraud

#######################################################################################################################
#
#   Mike Ross is a fraud!. That's what the world says. However, Harvey is highly disagreeable to this, and feels
#   that Mike did what he had to, only for the good of the world.
#   Tired of constant criticism, Harvey decides to prove to the world, what a great friend he is. Travis Tanner,
#   being his Biggest competitor, challenges him to the following task :
#   Given an array A of size N and an integer K, can you find the number of good sub-arrays of this array?
#   A sub-array is a contiguous subsequence of an array, and is considered to be good, if the product of all
#   integers it contains is divisible by K.
#   Harvey is completely bowled over by the difficulty of this task, as he is not a very math oriented person,
#   and needs your help urgently. Can you find the answer ?
#
#   Input Format :
#   The first line contains 2 space separated integers N and K. The next line contains N space separated integers
#   denoting the elements of array A.
#
#   Output Format:
#   Print the required answer on a single line.
#
#   Constraints:
#   1 <= N <= 2×10^5
#   1 <= K <= 10^9
#   1 <= A[i] <= 10^9
#
#   SAMPLE INPUT
#   6 2
#   1 2 3 4 5 6
#
#   SAMPLE OUTPUT
#   18
#
#   Explanation
#   The subarray from 4 to 6 is one of the subarrays divisible by 2, as 4×5×6=120. that is divisible by 2. In total,
#   there are 18 such subarrays.
#
#######################################################################################################################
from functools import reduce
import operator

n,k = input().strip().split()
aeAjnabi = [int(x) for x in input().strip().split()]
n = int(n)
k = int(k)

subArrays = 0

for greenHouse in range(n):
    i = 0
    j = greenHouse + 1
    while j <= n:
        #print(aeAjnabi[i : j])
        if reduce(operator.mul, aeAjnabi[i : j], 1) % k == 0 :
            subArrays += 1
        i += 1
        j += 1

print(subArrays)
