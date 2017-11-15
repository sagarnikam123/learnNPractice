# Ice Cream Parlor

#######################################################################################################################
#
#   Each time Sunny and Johnny take a trip to the Ice Cream Parlor, they pool together m dollars for ice cream.
#   On any given day, the parlor offers a line of n flavors. Each flavor, i, is numbered sequentially with a unique
#   ID number from 1 to n and has a cost, ci, associated with it.
#   Given the value of m and the cost of each flavor for t trips to the Ice Cream Parlor, help Sunny and Johnny
#   choose two flavors such that they spend their entire pool of money (m) during each visit. For each trip to the
#   parlor, print the ID numbers for the two types of ice cream that Sunny and Johnny purchase as two space-separated
#   integers on a new line. You must print the smaller ID first and the larger ID second.
#   Note: Two ice creams having unique IDs i and j may have the same cost (i.e.ci = (tiple equal to) cj).
#
#   Input Format
#   The first line contains an integer t, denoting the number of trips to the ice cream parlor. The 3t subsequent
#   lines describe all of Sunny and Johnny's trips to the parlor; each trip is described as follows:
#       The first line contains m.
#       The second line contains n.
#       The third line contains n space-separated integers denoting the cost of each respective flavor.
#       The ith integer corresponding to the cost ci, for the ice cream with ID number i (where 1 <= i <= n).
#
#   Constraints
#   1 <= t <= 50
#   2 <= m <= 10^4
#   2 <= n <= 10^4
#   1 <= ci <= 10^4, where i E(belongs to) [1,n]
#   It is guaranteed that there will always be a unique solution.
#
#   Output Format
#   Print two space-separated integers denoting the respective ID numbers for the flavors they choose to purchase,
#   where the smaller ID is printed first and the larger ID is printed second. Recall that each ice cream flavor
#   has a unique ID number in the inclusive range from 1 to n.
#
#   Sample Input
#   2
#   4
#   5
#   1 4 5 3 2
#   4
#   4
#   2 2 4 3
#
#   Sample Output
#   1 4
#   1 2
#
#   Explanation
#   Sunny and Johnny make the following two trips to the parlor:
#   The first time, they pool together m = 4 dollars. There are five flavors available that day and flavors 1 and 4
#       have a total cost of 1 + 3 = 4. Thus, we print 1 4 on a new line.
#   The second time, they pool together m = 4 dollars. There are four flavors available that day and flavors
#       1 and 2 have a total cost of 2 + 2 = 4. Thus, we print 1 2 on a new line.
#
#######################################################################################################################
