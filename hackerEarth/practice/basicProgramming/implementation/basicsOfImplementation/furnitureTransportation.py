# Furniture Transportation

#######################################################################################################################
#
#   The warehouse of Urban ladder in Bangalore has n packages containing furniture. As the warehouse cannot
#   accommodate all of them, the warehouse manager has decided to transfer m of the packages
#   to a warehouse located in Chennai.
#   For this reason, all the packages are kept in a line and a number(which determines its value) is written on them.
#   The number is calculated based on the price of the furniture in the package. The greater the number,
#   the more valuable the package is.
#   Then, the warehouse manager asks you to choose the m packages, which will be transferred to the other warehouse.
#   He also imposed two conditions. They are,
#       The chosen m packages have to form a contiguous segment of packages.
#       Any of the chosen package's value should not be greater than a number l as the manager doesn't want
#       to take the risk of damage to the furniture.
#   Find the number of ways you can choose the m packages.
#
#   Input
#   The first line of input will contain three space separated integers n (1 ≤ n ≤ 2 x105), l (0 ≤ l ≤ 109)
#   and m (1 ≤ m ≤ n). The next line will contain n space separated integers, the ith integer being the value of
#   ith package. The value of packages will be non-negative and will not exceed 109.
#
#   Output
#   Print a single integer — the number of ways you can choose the m packages.
#
#   SAMPLE INPUT
#   5 3 2
#   1 2 3 4 5
#
#   SAMPLE OUTPUT
#   2
#
#   Explanation
#   The two ways by which this can happen is: 1. Take package with weight 1 and weight 2. 2.
#   Take package with weight 2 and weight 3. Since, 1-2 and 2-3 are contiguous.
#   And are not greater than the value of L, which is 3.
#
#######################################################################################################################
