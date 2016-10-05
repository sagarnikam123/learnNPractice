# Comrades - II

#######################################################################################################################
#
#   It’s the year 2552, the Humans just won a war against a very powerful alien race that had invaded our solar
#   system. The Human army is in celebration mode!. The army has n soldiers. The soldiers are numbers from 1 to n.
#   The army has a superiority hierarchy. Every soldier has one immediate superior. The superior of a superior of
#   a soldier is also a superior to that soldier. So, a soldier may have one or more superiors but only one
#   immediate superior. Every soldier has to congratulate every other soldier. For a pair of soldiers if one of
#   them is the superior of the other, they will shake hands. Otherwise, they will bump their fists.
#   You are given the list of immediate superior of all soldiers. Your job is to tell how many handshakes and
#   fist bumps will be there. NOTE: Among all soldiers there is one soldier who does not have any superior.
#   He is the commander of the whole army.
#
#   Input:
#   The first line of the input contains t, the number of test cases. The first line of each test case contains n,
#   the number of soldiers. The next line contains n space separated integers. The ith integer represents the
#   immediate superior of the ith soldier. The immediate superior of the commander of the army will be '0'.
#
#   Output:
#   Output two space separated integers, the number of handshakes and the number of fist bumps.
#
#   Constraints:
#   1 <= t <= 10
#   1 <= n <= 100000
#   It is guaranteed that the commander of the army is a superior of all soldiers.
#
#   SAMPLE INPUT
#   2
#   3
#   0 1 1
#   2
#   2 0
#
#   SAMPLE OUTPUT
#   2 1
#   1 0
#
#   Explanation
#   1st test case: Handshakes between (1,2), (1,3). Fist bumps between (2,3)
#   2nd test case: Handshake between (1,2) No fist bumps
#
#######################################################################################################################
