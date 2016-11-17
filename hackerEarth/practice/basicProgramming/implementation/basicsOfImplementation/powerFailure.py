# Power Failure

#######################################################################################################################
#
#   Dexter is a young genius. He is so smart that he has built a big laboratory for himself. His rival’s name is
#   Mandark. Dexter’s laboratory has developed a power failure due to a prank played on him by Mandark.
#   He decided to buy batteries to temporarily provide power to his lab. His lab has n machines. The ith machine
#   requires a battery with voltage rating of atleast Vi volts (1<=i<=n). Dexter went to the local electronics shop.
#   They have one battery of each voltage rating from 1 to M. Dexter is very suspicious of his rival Mandark.
#   He thinks that Mandark has planted bombs in batteries with a prime voltage rating. He doesn’t want those
#   batteries. As his lab computer is not working, Dexter wants you to find out the number of ways he can buy
#   batteries for each of his machines.
#
#   Input:
#   The first line of the input contains t, the number of test cases. t test cases follow.
#   Each test case consists of two lines. The first line contains n
#   and m. The second line contains n space separated integers denoting Vi.
#
#   Output:
#   For each test case output a single number, that is the answer for that test case.
#   Output the number of ways modulo 1000000007(109+7).
#
#   Constraints:
#   1 <= t <= 100
#   1 <= m,n,Vi <= 100000
#
#   SAMPLE INPUT
#   2
#   3 100
#   98 100 99
#   2 8
#   5 6
#
#   SAMPLE OUTPUT
#   1
#   2
#
#   Explanation
#   In the first test case, there is only one way of buying batteries for each machine, 98
#   for the first machine, 100 for the second machine and 99 for the third In the second test case,
#   there are the following two ways:
#   1.(8,6)
#   2.(6,8)
#
#######################################################################################################################
