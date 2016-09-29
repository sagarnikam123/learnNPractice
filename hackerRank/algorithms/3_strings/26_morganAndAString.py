# Morgan and a String

#######################################################################################################################
#
#   Jack and Daniel are friends. Both of them like letters, especially upper-case ones.
#   They are cutting upper-case letters from newspapers, and each one of them has their collection of letters stored
#   in separate stacks. One beautiful day, Morgan visited Jack and Daniel. He saw their collections.
#   Morgan wondered what is the lexicographically minimal string, made of that two collections. He can take a
#   letter from a collection when it is on the top of the stack.
#   Also, Morgan wants to use all the letters in the boys' collections.
#
#   Input Format
#   The first line contains the number of test cases T.
#   Every next two lines have such format: the first line contains string A, and the second line contains string B.
#
#   Constraints
#   1 <= T <= 5
#   1 <= |A| <= 10^5
#   1 <= |B| <= 10^5
#   A and B contain upper-case letters only.
#
#   Output Format
#   Output the lexicographically minimal string S for each test case in new line.
#
#   Sample Input
#   2
#   JACK
#   DANIEL
#   ABACABA
#   ABACABA
#
#   Sample Output
#   DAJACKNIEL
#   AABABACABACABA
#
#   Explanation
#   The first letters to choose from were J and D since they were at the top of the stack. D was chosen, the options
#   then were J and A. A chosen. Then the two stacks hav J and N, so J is chosen. (Current string is DAJ) Continuing
#   this way till the end gives us the resulting string.
#
#######################################################################################################################
