# Mike and GCD Issues

#######################################################################################################################
#
#   Mike claims to be good at math, and a person having a photographic memory. Harvey does trust Mike, but he is
#   not completely sure about these claims said by him. So, for reassurance, he gives the following task to Mike :
#   Given a 1-indexed array A of size N, the distance between any 2 indices of this array i and j is given by |i−j|.
#   Now, given this information, Mike needs to find for every index i (1 <= i <= N), an index j,
#   such that 1 <= j <= N, i≠j, and GCD(A[i],A[j])>1
#   If there are multiple such candidates for an index i, you need to find and print the index j, such that the
#   distance between i and j is minimal. If there still exist multiple candidates,
#   print the minimum j satisfying the above constraints.
#   For each index i of this array, find and print an index j satisfying the conditions above. If,
#   for any index i there does not exist any j, print −1 instead of its answer.
#
#   Input Format:
#   The first line contains a single integer N denoting the size of array A. The next line contains N space
#   separated inetegers, where the ith integer denotes A[i].
#
#   Output Format :
#   Print N space separated integers, where the ith integer denotes an index j, where 1 <= j <= N, i≠j,
#   and GCD(A[i],A[j])>1, and the distance between i and j is minimal if there exist multiple candidates
#   satisfying the above constraints. If there still exist multiple candidates satisfying the above constraints,
#   print the minimum j doing so.
#
#   Constraints :
#   1 <= N <= 2×10^5
#   1 <= A[i] <= 2×10^5
#
#   SAMPLE INPUT
#   5
#   2 3 4 9 17
#
#   SAMPLE OUTPUT
#   3 4 1 2 -1
#
#   Explanation
#   The closest index to index 1 satisfying the above constraints is index 3, as GCD(2,4)=2, that is greater than
#   one. Similarily, the closest indices to indices 2,3, and 4 are indices 4,1 and 2 respectively.
#
#######################################################################################################################
