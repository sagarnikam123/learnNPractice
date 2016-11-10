# Build a String

#######################################################################################################################
#
#   Greg wants to build a string, S of length N. Starting with an empty string, he can perform 2 operations:
#       Add a character to the end of S for A dollars.
#       Copy any substring of S, and then add it to the end of S for B dollars.
#   Calculate minimum amount of money Greg needs to build S.
#
#   Input Format
#   The first line contains number of testcases T.
#
#   The 2xT subsequent lines each describe a test case over 2 lines:
#   The first contains 3 space-separated integers, N, A, and B, respectively.
#   The second contains S (the string Greg wishes to build).
#
#   Constraints
#   1 <= T <= 3
#   1 <= N <= 3 x 10^4
#   1 <= A, B <= 10000
#   S is composed of lowercase letters only.
#
#   Output Format
#   On a single line for each test case, print the minimum cost (as an integer) to build S.
#
#   Sample Input
#   2
#   9 4 5
#   aabaacaba
#   9 8 9
#   bacbacacb
#
#   Sample Output
#   26
#   42
#
#   Explanation
#   Test Case 0:
#   Sinitial = ""; Sfinal = "aabaacaba"
#   Append "a"; S = "a"; cost is 4
#   Append "a"; S = "aa"; cost is 4
#   Append "b"; S = "aab"; cost is 4
#   Copy and append "aa"; S = "aabaa"; cost is 5
#   Append "c"; S = "aabaac"; cost is 4
#   Copy and append "aba"; S = "aabaacaba"; cost is 5
#   Summing each cost, we get 4+4+4+5+4+5 = 26, so our output for Test Case 1 is 26.
#
#   Test Case 1:
#   Sinitial = ""; Sfinal = "bacbacacb"
#   Append "b"; S= "b"; cost is $8
#   Append "a"; S= "ba"; cost is $8
#   Append "c"; S= "bac"; cost is $8
#   Copy and append "bac"; S= "bacbac"; cost is $9
#   Copy and Append "acb"; S= "bacbacacb"; cost is $9
#   Summing each cost, we get 8+8+8+9+9 = 42, so our output for Test Case 2 is 42.
#
#######################################################################################################################
