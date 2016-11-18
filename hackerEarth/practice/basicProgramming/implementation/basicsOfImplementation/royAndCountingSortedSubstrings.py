# Roy and Counting Sorted Substrings

#######################################################################################################################
#
#   Roy has a string S of length N. String S is made of lower case English alphabets. He likes sorted strings.
#   So he wonders how many substrings of S are sorted.
#   Given the string S, your task is to count the number of sorted substrings of S.
#
#   A string s is lexicographically sorted if si  <=  si+1 where 1 <= i <= N−1
#   (consider 1-based indexing).
#   Caution: Use 64-bit integer for count to avoid overflow.
#
#   Input:
#   First line contains integer T- number of test cases.
#   First line of each test case contains N - length of string .
#   Second line contains S- the given string.
#
#   Output:
#   Print the answer for each test case in a new line.
#
#   Constraints:
#   1 <= T <= 10
#   1 <= N <= 1000000
#   S consists of only lower case English alphabets [a−z].
#
#   SAMPLE INPUT
#   4
#   3
#   abc
#   3
#   bba
#   4
#   abac
#   3
#   zyx
#
#   SAMPLE OUTPUT
#   6
#   4
#   6
#   3
#
#   Explanation
#   Test Case #1: Substrings of 'abc' are: a, b, c, ab, bc, abc All these 6
#   substrings are sorted. Hence the result is 6.
#
#   Test Case #2: Substrings of 'bba' are: b, b, a, bb, ba, bba Out of these 6
#   substrings, 4 ('b', 'b', 'a' and 'bb') substrings are sorted. So the answer is 4.
#
#   Test Case #3: Substrings of abac are: a, b, a, c, ab, ba, ac, aba, bac, abac Out of these 10
#   substrings, 6 ('a', 'b', 'a', 'c', 'ab' and 'ac') substrings are sorted. Hence the result is 6.
#
#   Test Case #4: Substrings of zxy are: z, y, x, zy, yx, zyx Out of these 6
#   substrings, only 3 ('z', 'y' and 'x') substrings are sorted. So the answer is 3.
#
#######################################################################################################################
