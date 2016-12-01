# Rhezo and his birthday gift

#######################################################################################################################
#
#   It is time for Rhezo's birthday and you need to find a gift for him. It is well known that he likes palindromic
#   strings of length N having uppercase alphabetic characters. Surprisingly, he doesn't like palindromic strings
#   of length 3. Lets call these palindromic strings of length 3
#   as bad strings. It is also well known that he doesn't like certain pairs of characters that occur adjacent
#   to each other in any string.
#
#   You want to see Rhezo happy, and therefore want to gift him a palindromic string that makes him happy.
#   A palindromic string will make him happy if there is no substring in it that is a bad string and there aren't
#   any adjacent pair of characters such that the pair belongs to one of the given M
#   pairs that he doesn't like. You are given the information about these M pairs in the form of P Q, which means
#   that Rhezo doesn't want characters denoted by P and Q to occur together.
#   You need to find the number of palindromic strings that will make Rhezo happy. As the answer could be large,
#   find the answer modulo 10^6+3.
#
#   Note
#   The palindromic string should be made only of uppercase letters. Also, it is not guaranteed
#   that the M pairs will always be distinct.
#
#   Input:
#   First line of the input contains two integers N and M separated by a single space.
#   Each of the next M lines contain two characters P and Q (not the characters 'P' and 'Q') which means that
#   character denoted by P and character denoted by Q can't occur together in the string.
#
#   Output:
#   Print the number of valid palindromic strings of length N modulo 10^6+3 in a single line.
#
#   Constraints:
#   1 <= N <= 2000
#   1 <= M <= 26∗26
#   P,Q can be any of the uppercase alphabetic character
#
#   SAMPLE INPUT
#   3 5
#   A B
#   C D
#   E F
#   G H
#   I J
#
#   SAMPLE OUTPUT
#   0
#
#   Explanation
#   There are no palindromic strings satisfying all the conditions.
#
#######################################################################################################################
