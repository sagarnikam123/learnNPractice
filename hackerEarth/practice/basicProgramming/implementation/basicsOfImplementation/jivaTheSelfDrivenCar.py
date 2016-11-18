# Jiva, The Self Driven Car

#######################################################################################################################
#
#   Jiva is a self driven car and is out on its very first drive. It aims to earn some revenue by serving
#   as taxi driver. It starts its journey from a point and travels in a line for 100 Km. It picks and drops
#   passenger on the way,but can accommodate a maximum of M passengers at once.
#
#   Jiva wants be very economical & intends to equally split the fare among the number of passengers as the
#   following : - The normal rate being - 10 INR/Km for every passenger - If there are 2 passengers in the car
#   at any part of journey, it gives a 5% discount to both the passengers for that part of the journey. -
#   If there are 3 or more passengers in the car at any part of journey, it gives a 7% discount to all of them
#   for that part of the journey.
#   Also note that if the cab was full at any point in the journey,Jiva can not take any more passengers at
#   that time and reports "Cab was full" to its engineers in the end.
#   Given, a total of N passengers that board Jiva at different points. Find the total revenue earned
#   after the journey completes. (See N.B. Section)
#
#   Input:
#   The first line contains an integer T. T test cases follow.
#   Second line of each test case contains 2 space-separated integers N and M.
#   Next N lines contain 2 space-separated integers ( Si and Ei ), the pick up and drop point of
#   the i'th passenger w.r.t the starting point.
#
#   Output:
#   Print the revenue earned (Rounded to the nearest integer) followed by "Cab was full" (without the quotes),
#   if applicable, in a new line for each test case.
#
#   N.B. If at a particular point of time, Jiva can take some people to fulfill the capacity then it would take
#   the people in preference of the order in which they are mentioned in the problem statement.
#   Suppose, The input is:
#   2 1
#   0 20
#   0 100
#   At time T = 0, there are 2 people, but Jiva can take only one of them. It will give higher priority to the
#   person mentioned first i.e. The person with time 0-20.
#
#   Constraints:
#   1 <= T <= 10
#   0 <= N, M <= 1000
#   0 <= Si <= Ei <= 100
#   Note: Candidates need to attempt only one of the given problems
#
#   SAMPLE INPUT
#   2
#   4 3
#   0 100
#   0 20
#   30 50
#   40 80
#   6 4
#   10 55
#   10 20
#   40 60
#   55 60
#   60 70
#   75 95
#
#   SAMPLE OUTPUT
#   1719 Cab was full
#   1070
#
#######################################################################################################################
