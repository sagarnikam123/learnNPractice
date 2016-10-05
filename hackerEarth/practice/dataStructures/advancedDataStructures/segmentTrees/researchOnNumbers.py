# Research on Numbers

#######################################################################################################################
#
#   Bob is studying in a research institute. He is currently researching on integer sequences. He has already done
#   some research on famous fibonacci sequence. Now he is trying to investigate patterns
#   in a general recursive sequence (Ai)
#   Sequence (Ai) is
#   Ai = Bi (for i <= k)
#   Ai = C1 * Ai-1 + C2 * Ai-2 +.......+ Ck*Ai-k (for i > k)
#
#   But while calculating the sequence he realizes that values are growing very fast. So to keep the values small
#   he calculates values modulo 109+7 (1000000007) . So that each term of sequence will be less than 109+7.
#   While he is busy with his work, his girlfriend is disturbing him a lot. He wants to make her busy with some task.
#   He gives her the task of sorting all the terms from Al to Ar of his sequence. She is very quick so he gives
#   her same task Q times (of course with different l and r). Since sorting is very boring task so she asks you
#   to complete the task.
#   You will be given two numbers l and r and you are expected to output all the terms from Al to Ar in non
#   decreasing order. But to avoid such a large output, if there are more than 100 terms
#   in the output print only first 100.
#
#   Input :
#   First line contains T, the number of test cases. First line of each test case contains two space separated
#   integers Q and k. Next line contains array B of length k. 3rd line contains array C of length k.
#   Each of next Q lines contains two space separated integers l and r.
#
#   Output :
#   For each test case output Q lines. Each line contains terms from Al to Ar in non decreasing order.
#   If more than 100 terms are there to output,print only first 100
#
#   Constraints :
#   1 <= T <= 3
#   1 <= Q <= 100
#   1 <= k <= 5
#   1 <= Bj,Cj <= 50
#   1 <= l,r <= 10^6
#   l <= r
#
#   SAMPLE INPUT
#   2
#   4 3
#   1 2 3
#   2 1 1
#   1 5
#   6 8
#   8 9
#   6 9
#   3 4
#   4 5 7 9
#   2 2 1 3
#   2 7
#   10 12
#   100 101
#
#   SAMPLE OUTPUT
#   1 2 3 9 23
#   58 148 377
#   377 960
#   58 148 377 960
#   5 7 9 49 138 404
#   9964 29126 85073
#   483689722 905484679
#
#######################################################################################################################
