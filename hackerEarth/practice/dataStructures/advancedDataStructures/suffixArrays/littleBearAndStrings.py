# Little bear and strings

#######################################################################################################################
#
#   Little bear has got a big string S as his birthday present. Also, he personally loves all those strings that
#   start with T1 and end with T2, and calls them good. Now, he would like most the birthday present has maximum
#   number of good substrings. Also, he is not the kind of "bear"(:P) that would easily get fooled by substrings
#   with different start and end positions. He would only count a string once, irrespective of its number of
#   occurences. More formally, he wants to determine the number of distinct good substrings.
#
#   Input:
#   The input file contains multiple test cases that end with EOF.
#   Each test case comprises of 3 lines each containing S, T1 and T2 respectively.
#
#   Output:
#   Output the required answer in a new line for every test case.
#
#   Constraints:
#   1  <=  |S| , |T1|, |T2|  <=  300000
#   The maximum input file size is < 2 MB.
#
#   Note:
#   1. The input string contains only letters a-z.
#   2. A substring is any non-empty contiguous subsequence of given string. Read more here.
#   3. Two substrings s1 and s2 are different from one another if either their lengths are unequal or there is
#   at least one index i such that s1[i] is not equal to s2[i]. This is irrespective of start
#   and end points of substring.
#
#   SAMPLE INPUT
#   hammer
#   ham
#   mer
#   gogoa
#   go
#   z
#   gogoa
#   g
#   o
#
#   SAMPLE OUTPUT
#   1
#   0
#   2
#
#   Explanation
#   Distinct substrings being referred are : case 1: "hammer" case 2: None case 3: "go", "gogo"
#
#######################################################################################################################
