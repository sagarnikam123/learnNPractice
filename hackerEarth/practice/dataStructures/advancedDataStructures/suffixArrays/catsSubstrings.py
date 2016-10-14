# Cats Substrings

#######################################################################################################################
#
#   There are two cats playing, and each of them has a set of strings consisted of lower case English letters.
#   The first cat has N strings, while the second one has M strings. Both the first and the second cat will choose
#   one of it's strings and give it to you. After receiving two strings, you will count the number of pairs of
#   equal substrings that you can choose in both strings, and send this number back to the cats. (Note that two
#   occurences of the same substring are considered different. For example, strings "bab" and "aba" have 6 such pairs.)
#   The cats are going to give you all N * M possible pairs. They are interested in the total sum of numbers
#   received from you. Your task is to find this number.
#
#   Input format
#   The first line of the input contains the integer N. The next N lines contain the first cat's strings,
#   one string per line. The next line contain the integer M, and after that the next M lines contain the second
#   cat's strings, one string per line as well.
#
#   Output format
#   In one line print the answer to the problem.
#
#   Constraints
#   1  <=  N, M  <=  100,000 , the total length of each cat strings set will not exceed 100,000.
#   All strings in the input will be non-empty.
#
#   SAMPLE INPUT
#   2
#   ab
#   bab
#   2
#   bab
#   ba
#
#   SAMPLE OUTPUT
#   18
#
#######################################################################################################################
