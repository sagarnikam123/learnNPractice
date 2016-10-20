# Non-Decreasing Sequence

#######################################################################################################################
#
#   Shinchan and Kazama both are playing with numbers. Shinchan gives Kazama an array of numbers and asks him to
#   tell the minimum possible last number of a non decreasing sequence of length L.
#   Note- Check the sample I/O for more clarity.
#
#   INPUT-
#   Input consists of number of test cases T. Each test case contains size of array i.e N.
#   Next line contains N space separated elements of array.
#   Next line contains length of the non decreasing sequence i.e. L.
#
#   OUTPUT-
#   You have to print the minimum possible last number of a sequence and if their is no non-decreasing
#   sequence of length L, then print "−1" without the quotes.
#
#   CONSTRAINTS-
#   1 <= T <= 100
#   1 <= N <= 10^6
#   1 <= a[i] <= 10^6
#   1 <= L <= N
#
#   SAMPLE INPUT
#   1
#   7
#   9 7 2 5 4 11 12
#   3
#
#   SAMPLE OUTPUT
#   11
#
#   Explanation
#   In sample input, possible non-decreasing sequences of length L=3
#   are (9,11,12),(7,11,12),(2,5,11),(2,4,11),(2,5,12),(2,4,12),(2,11,12),(5,11,12),(4,11,12)
#   and the minimum last number is 11 for the sequences (2,5,11) and (2,4,11). Hence, the answer is 11.
#
#######################################################################################################################
