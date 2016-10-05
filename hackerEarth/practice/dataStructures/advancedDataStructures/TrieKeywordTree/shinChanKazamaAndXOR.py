# Shin-Chan Kazama and XOR

#######################################################################################################################
#
#   SHIN-CHAN and KAZAMA grew up to become very good friends. They went to high school together and shared the same
#   bench in class. In one of the maths classes, while the teacher was teaching the class about the XOR
#   (exclusive OR) operator, the two of them were busy thinking of SHIZUKA (both of them had a big crush on her
#   since childhood days). The teacher saw this and decided to punish them by giving them a punishment for not paying
#   attention in class. As a punishment, he gave them a very difficult assignment in which there were several
#   questions on a sequence of given numbers.
#   Given an array of integers A [ 1 - N ], they had to answer a number of queries. Each query had three integers
#   l , r , and X. They had to find a number Z in the array in range A[ l ], A[ l + 1 ], .... A[ r ]. Z for a range
#   and integer X is defined as a number A [ i ] ( l <= i <= r) such that the value of Z when taken XOR with X comes
#   out to be lesser than that for any other element in the given range.
#   As the two of them did not know anything about XOR and were busy planning a surprise for SHIZUKA's b'day, help
#   them finding the answers of the given queries. The answer to each query is the number Z and the number of
#   times it occurs in the given range.
#
#   INPUT :
#   The first line of the input contains an integer N. The next line contains N space separated integers, the
#   elements of the array A. The third line of the input contains Q the number of queries. next Q lines contains
#   three space separated integers l, r and X (description of a particular query) .
#
#   OUTPUT :
#   For each query, output the number Z and the number of times it occurs in the range l to r separated by a space.
#
#   CONSTRAINTS :
#   1 <= N <= 10^6
#   1 <= X,A[i] <= 10^9
#   1 <= l <= r <= N
#   1 <= Q <= 50000
#
#   SAMPLE INPUT
#   7
#   1 3 2 3 4 5 5
#   5
#   1 1 1
#   1 2 2
#   1 4 3
#   1 5 4
#   1 7 5
#
#   SAMPLE OUTPUT
#   1 1
#   3 1
#   3 2
#   4 1
#   5 2
#
#######################################################################################################################
