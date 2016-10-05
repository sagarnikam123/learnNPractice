# Shil and LCP Pairs

#######################################################################################################################
#
#   Shil came across N strings - s1 , s2 , s3 .. sN . He wants to find out total number of unordered pairs (i, j)
#   such that LCP(si , sj) = k. You have to do thi for every k in [0, L]. Here L = max ( len(si) ) and
#   LCP denotes longest common prefix.
#
#   INPUT:
#   First line consists of integer N denoting total number of strings.
#   Next N lines consists of strings s1 , s2 , s3 .. sN.
#
#   OUTPUT:
#   Print L+1 integers - h0 , h1 , h2, ..., hL
#   where hi denotes total number of pairs having LCP value i and L = max ( len(si) ).
#
#   CONTRAINTS:
#   1 <= N <= 105
#   1 <= Σ len(si) <= 106
#   Strings consists of lower case english alphabets ( 'a' - 'z' ) only.
#
#   SAMPLE INPUT
#   5
#   aaaa
#   ab
#   abcd
#   aaae
#   g
#
#   SAMPLE OUTPUT
#   4 4 1 1 0
#
#   Explanation
#   All the pairs having LCP 0 are (1,5) , (2,5) , (3,5) , (4,5)
#   All the pairs having LCP 1 are (1,2) , (1,3) , (2,4) , (3,4)
#   All the pairs having LCP 3 are (1,4)
#   All the pairs having LCP 2 are (2, 3)
#
#######################################################################################################################
