# Brother O Brother

#######################################################################################################################
#
#   ARYA is at JOHN's home now and JOHN's brother DAVID wants his help in his homework assignment. It is as follows:-
#   For a particular string G, he has the following tasks:-
#   1 Y X - Update the Y th character in the string to X
#   2 A B - Find if all the characters in the string from index A to index B can be rearranged
#   to form a palindrome Output "yes" or "no"
#
#   INPUT
#   First line contains N length of the string and K, no. of queries
#   Next line contains of N lowercase english letters.
#   Next Q lines contains the queries , if the query is of 1st type, it will contain 2 integers Y and X.
#   If it is of 2nd type then , it will consist of 3 integers
#
#   OUTPUT
#   Output "yes" or "no", for query type 2 (without the quotes)
#
#   CONSTRAINTS
#   1 <= N <= 10^5
#   1 <= Q <= 10^5
#   1 <= X,Y,A,B <= N
#
#   SAMPLE INPUT
#   5 4
#   ababb
#   2 2 3
#   1 3 b
#   2 1 4
#   2 1 5
#
#   SAMPLE OUTPUT
#   no
#   no
#   yes
#
#   Explanation
#   For 1st query , 'b' and 'a' can't be rearranged to form the palindrome.
#   For 3rd query , 'a' , 'b' , 'b' , 'b' can't be rearranged to form the palindrome.
#   For 4th query , all the characters can be rearranged like this "bbabb" to form a palindrome.
#
#######################################################################################################################
