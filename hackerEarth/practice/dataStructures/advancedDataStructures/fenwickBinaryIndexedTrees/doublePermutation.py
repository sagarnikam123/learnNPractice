# Double Permutation

#######################################################################################################################
#
#   Ted has a random problem. This morning, he took two arrays consisting of permutations of the first N natural
#   numbers and concatenated them together into a single array. But during his lunch break, his co-worker, Calvin,
#   shuffled the numbers around!
#   To make matters worse, the numbers in the second of the two original permutations have grown into bigger numbers
#   now. Each of them have increased by N. Afraid to look at what has become of his array, Ted first wants to know
#   how many inversions he should expect in his array.
#   Luckily, Calvin is quite kind, and so he has given you a tip. He tells you the values of the permutation before
#   some numbers have grown, but he doesn't tell you which permutation each number was original from.
#   Since Ted doesn't like real numbers with a lot of digits after the decimal point, he wants you to multiply the
#   answer by 2^N before printing it out. Ted understands that you might have difficulty dealing with such a large
#   number now, so you should print it modulo 109+7.
#
#   Input:
#   The first line of input will have N.
#   The second line of input will have 2N numbers, the permuted permutations before the numbers grew.
#   It is guaranteed that each number from 1 to N appears exactly twice.
#
#   Output:
#   Output one integer, the expected number of inversions times 2^N modulo 10^9+7.
#
#   Constraints:
#   1 <= N <= 10^5
#   For 40% of the test cases, 1 <= N <= 15.
#
#   SAMPLE INPUT
#   2
#   1 2 1 2
#
#   SAMPLE OUTPUT
#   10
#
#   Explanation
#   The permutation when Ted looks at it could be any of the following 4:
#   1 2 3 4 (0 inversions)
#   1 4 3 2 (3 inversions)
#   3 2 1 4 (3 inversions)
#   3 4 1 2 (4 inversions)
#   Ted can expect an average of 2.5 inversions. Multiplied by 2^2 = 4 and taken modulo 10^9+7,
#   the final output should be 10.
#
#######################################################################################################################
