# Yet Another KMP Problem

#######################################################################################################################
#
#   This challenge uses the famous KMP algorithm. It isn't really important to understand how KMP works, but you
#   should understand what it calculates.
#   A KMP algorithm takes a string S, of length N as input. Let's assume that the characters in S are indexed
#   from 1 to N; for every prefix of S, the algorithm calculates the length of its longest valid border in linear
#   complexity. In other words, for every i (where 1 <= i <= N ) it calculates the largest l (where 0 <= l <= i - 1)
#   such that for every p (where 1 <= p <= l) there is S[p] = S[i-l + p].
#   Here is an implementation example of KMP:
#
#   kmp[1] = 0;
#   for (i = 2; i <= N; i = i + 1){
#       l = kmp[i - 1];
#       while (l > 0 && S[i] != S[l + 1]){
#           l = kmp[l];
#       }
#       if (S[i] == S[l + 1]){
#           kmp[i] = l + 1;
#       }
#       else{
#           kmp[i] = 0;
#       }
#   }
#
#   Given a sequence x1,x2,....,x26, construct a string S, that meets the following conditions:
#       The frequency of letter 'a' in S is exactly x1 , the frequency of letter 'b' in S is exactly x2, and so on.
#       Let's assume characters of S are numbered from 1 to N, where n E(Summation)i=1 = N. We apply the KMP algorithm
#       to S and get a table, kmp, of size N. You must ensure that the sum of kmp[i] for all i is minimal.
#
#   If there are multiple strings which fulfill the above conditions, print the lexicographically smallest one.
#
#   Input Format
#   A single line containing 26 space-separated integers describing sequence x.
#
#   Constraints
#   The sum of all xi will be a positive integer <= 10^6.
#
#   Output Format
#   Print a single string denoting S.
#
#   Sample Input
#   2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
#   Sample Output
#   aabb
#
#   Explanation
#   The output string must have two 'a' and two 'b'. There are several such strings but we must ensure that sum of
#   kmp[i] for all 1 <= i <= 4 is minimal. See the figure below:
#   [kmp(1).png]
#   The minimum sum is 1. Among all the strings that satisfy both the condition,
#   "aabb" is the lexicographically smallest.
#
#######################################################################################################################
