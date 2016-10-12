# DISTINCT DIGITS II

#######################################################################################################################
#
#   Andi and Bob are the best friends of each other.They both are good programmers as well,They like to do
#   programming together so that if one finds any difficulty other can help.But these days Andi is quite busy as
#   his exams are on the way . So, Bob has to do programming alone.while practising on HackerEarth Bob encounters
#   an interesting problem which he was unable to solve efficiently.So, he asked for Andi's help.
#   Problem as stated by Bob :
#   Given an array of N elements and Q queries need to be processed over this array.
#   A query can be any of the following three types.
#
#   Type ADD: u v
#   Type MUL: u v
#   Type REP: u v
#   Type MAX: l r
#   Type MIN: l r
#
#   Explanation:
#   for query Type ADD: replace the uth element of the array with (uth element+v)%MOD;
#   for query Type MUL: replace the uth element of the array with (uth element *v)%MOD;
#   for query Type REP: replace uth element of the array with v%MOD
#   for query Type MAX: count the number of numbers which have MAXIMUM distinct digits between l to r, both inclusive
#   for query Type MIN: count the number of numbers which have MINIMUM distinct digits between l to r, both inclusive
#   Andi likes the problem very much and wants to solve it.But being super busy with exams, he has no time to help Bob.
#   But he can’t let Bob feel helpless with any problem. So can you please help Bob and save their friendship?
#   note: Assume MOD=10^9+7.
#   I check even my code is giving WA on sample test case so please do submit your code to check the result and
#   please ensure output format should be same as mentioned in the problem statement .
#   print a new line after each query of type MIN or MAX.
#
#   INPUT:
#   First line of the input contains a single integer N denoting the number of elements in the array.Next line of
#   input contains N space seperated integers.Third line of input contains a single interger Q denoting the number
#   of queries to be processed over the array.Next Q lines of input contain Q queries (one query per line).
#
#   OUTPUT:
#   for each query of type MIN and MAX print two space seperated integers number of distinct digits
#   and number of such numbers.
#
#   CONSTRAINT:
#   1 <= Q,N <= 10^5
#   1 <= A[i] <= 10^9
#   1 <= v <= 10^9
#   1 <= u,l,r <= N
#
#   SAMPLE INPUT
#   5
#   1 2 3 4 5
#   5
#   MAX 1 5
#   MIN 1 5
#   MUL 3 4
#   MAX 1 5
#   MIN 1 5
#
#   SAMPLE OUTPUT
#   1 5
#   1 5
#   2 1
#   1 4
#
#######################################################################################################################
