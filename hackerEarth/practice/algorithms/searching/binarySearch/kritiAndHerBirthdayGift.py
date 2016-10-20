# Kriti and her Birthday Gift

#######################################################################################################################
#
#   Today is Kriti's birthday but I forgot to bring a gift for her. She is very angry with me. I have an idea for
#   a gift. She likes coding very much. Why not give her a problem to solve as her gift?
#   I know a problem but I am not sure whether its solvable or not.
#   The problem initially has N strings numbered 1 to N. The program has to answer Q queries. Each query is of
#   the form l r S. For each query, the program has to print the number of times the string S appears in the
#   range [l,r].Help me by solving the problem!!
#
#   Input
#   Input will begin with an integer N denoting the number of strings.
#   N lines follows each having a string.
#   The next line contains Q denoting the number of queries.
#   Each of the next Q lines contain a query of the form l r S.
#
#   Output
#   For each query of type l r S, print the answer to that query. Each answer must be in a new line.
#
#   Constraints
#   100  <=  N  <=  100000
#   100  <=  Q  <=  100000
#   1  <=  l  <=  r  <=  N
#   Size of each string in the input is greater than or equal to 5 and less than or equal to 10.
#   Each string contains only lower case english characters.
#
#   SAMPLE INPUT
#   3
#   abc
#   def
#   abc
#   3
#   1 2 abc
#   1 3 abc
#   1 2 hgj
#
#   SAMPLE OUTPUT
#   1
#   2
#   0
#
#   Explanation
#   For query 1: Only one "abc" is present (at position 1st) in the range [1,2], so the answer is 1.
#   For query 2: Two "abc" are present (at position 1 and at position 3), so the answer is 2.
#   For query 3: No "hgf" is present in the range [1,2], so the answer is 0.
#
#######################################################################################################################
