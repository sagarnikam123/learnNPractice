# Comrades - III

#######################################################################################################################
#
#   The human army has proved itself against the mighty aliens by winning the Great War.
#   But even in times of peace, the army should remain alert and disciplint.
#   The army has N soldiers. The soldiers are numbered from 1 to N. The army has a superiority hierarchy.
#   Every soldier has one immediate superior. The superior of a superior of a soldier is also a superior to that
#   soldier. So, a soldier may have one or more superiors but only one immediate superior.
#   As a exercise to determine the efficiency of the army, the following drill has been designed.
#   You are given a list of orders. Each order is of the form "<Type><space><ID>"
#   where Type is either 1,2 or 3 and ID is a number S (1<=S<=N) that denotes a soldier.
#
#   There are three types of orders:
#   Type 1:
#   All the soldiers who have S as one of their superior will wake up.
#   Type 2:
#   All the soldiers who have S as one of their superior will go to sleep.
#   Type 3:
#   Count and output the number of soldiers who are awake and have S as one of their superior.
#
#   NOTE: Among all soldiers there is one soldier who does not have any superior.
#   He is the commander of the whole army.
#
#   Input :
#   The first line contains N, the number of soldiers. The next line contains N space separated integers.
#   The ith integer represents the immediate superior of the ith soldier.
#   The immediate superior of the commander of the army will be '0'.
#
#   The third line contains Q, the number of orders.
#   Each of the next Q lines contain two integers, the type of order and S.
#
#   Output :
#   For each Type-3 order, output the number of soldiers who are awake
#   and have the given soldier as their superior.
#
#   Constraints :
#   1 <= N <= 100000
#   1 <= Q <= 100000
#   1 <= Type <= 3
#   1 <= S <= N
#
#   A soldier cannot be his own superior.
#
#   SAMPLE INPUT
#   3
#   2 0 1
#   3
#   3 1
#   2 1
#   3 1
#
#   SAMPLE OUTPUT
#   1
#   0
#
#   Explanation
#   Initially all soldiers are awake. There is only one soldier who has soldier 1 as his superior i.e.
#   soldier 3. So the answer of the first Type 3 order is 1. After the order "2 1", all soldiers who have 1 as one
#   of their superiors (here, only soldier 3) will go to sleep. Therefore, the answer of the next order "3 1" is 0.
#
#######################################################################################################################
