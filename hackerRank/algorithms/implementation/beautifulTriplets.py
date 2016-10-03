# Beautiful Triplets

#######################################################################################################################
#
#   Erica wrote an increasing sequence of n numbers (a0,a1,....,an-1) in her notebook. She considers a triplet
#   (ai, aj, ak) to be beautiful if:
#   - i < j < k
#   - a[j] - a[i] = a[k] - a[j] = d
#   Given the sequence and the value of d, can you help Erica count the number of beautiful triplets in the sequence?
#
#   Input Format
#   The first line contains 2 space-separated integers, n (the length of the sequence) and
#   d (the beautiful difference), respectively.
#   The second line contains n space-separated integers describing Erica's increasing sequence a0, a1,....,an-1.
#
#   Constraints
#   1 <= n <= 10^4
#   1 <= d <= 20
#   0 <= ai <= 2 * 10^4
#   ai > ai-1 for 0 < i <= n-1
#
#   Output Format
#   Print a single line denoting the number of beautiful triplets in the sequence.
#
#   Sample Input
#   7 3
#   1 2 4 5 7 8 10
#
#   Sample Output
#   3
#
#   Explanation
#   Our input sequence is 1,2,4,5,7,8,10, and our beautiful difference d=3. There are many possible triplets
#   (ai, aj, ak), but our only beautiful triplets are (1,4,7), (4,7,10) and (2,5,8). Please see the equations below:
#   7-4 = 4-1 = 3 = d
#   10 - 7 = 7 - 4 = 3 = d
#   8 - 5 = 5 - 2 = 3 = d
#   Recall that a beautiful triplet satisfies the following equivalence relation:
#   a[j] - a[i] = a[k] - a[j] = d where i < j < k.
#
#######################################################################################################################
