# Ashton and String

#######################################################################################################################
#
#   Ashton appeared for a job interview and is asked the following question. Arrange all the distinct substrings of
#   a given string in lexicographical order and concatenate them. Print the Kth character of the concatenated string.
#   It is assured that given value of K will be valid i.e. there will be a Kth character.
#   Can you help Ashton out with this?
#   Note We have distinct substrings here, i.e. if string is aa, it's distinct substrings are a and aa.
#
#   Input Format
#   First line will contain a number T i.e. number of test cases.
#   First line of each test case will contain a string containing characters (a-z)
#   and second line will contain a number K.
#
#   Output Format
#   Print Kth character ( the string is 1 indexed )
#
#   Constraints
#   1 <= T <= 5
#   1 <= length <= 10^5
#   K will be an appropriate integer.
#
#   Sample Input #00
#   1
#   dbac
#   3
#
#   Sample Output #00
#   c
#
#   Explanation #00
#   The substrings when arranged in lexicographic order are as follows
#   a, ac, b, ba, bac, c, d, db, dba, dbac
#
#   On concatenating them, we get
#   aacbbabaccddbdbadbac
#   The third character in this string is c and hence the answer.
#
#######################################################################################################################
