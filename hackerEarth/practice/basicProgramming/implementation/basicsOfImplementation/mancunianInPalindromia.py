# Mancunian in Palindromia

#######################################################################################################################
#
#   Mancunian lives in the magical far-away land of Palindromia. Due to his patriotic nature, he wants each and
#   every one of his friends' name to be a palindrome. Note that Mancunian's patriotism
#   does not extend towards his own name.
#   To please him, each of his friends decide to change their name so that it becomes a palindrome.
#   They can do that by choosing at most two non-overlapping substrings of their own name and reversing them.
#   Given a list of Mancunian's friends' names which consist only of lowercase letters, count the total number
#   of friends who will be successful.
#
#   Input format
#   The first line contains two integers N
#   and L, denoting the number of friends Mancunian has and the maximum length of a person's name
#   in Palindromia respectively.
#   The ith of the next N lines contains a single string S denoting the name of the ith friend.
#
#   Output format
#   Print a single integer, which is the answer to the given problem.
#   Constraints
#   1 <= N <= 10
#   1 <= L <= 50
#
#   SAMPLE INPUT
#   4 10
#   aacbaac
#   acbdabc
#   abcdcba
#   abcbd
#
#   SAMPLE OUTPUT
#   3
#
#   Explanation
#   The first three people can successfully change their names to a palindrome.
#   The first person can reverse the substring (shown in bold), aacbaac and get the string caabaac.
#   The second string can be done by reversing the two substrings, acbdabc, to get the string abcdcba.
#   The third person does not need to make any changes.
#   The fourth string can never be converted to a palindrome.
#
#######################################################################################################################
