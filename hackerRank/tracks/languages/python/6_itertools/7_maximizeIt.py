# Maximize It

#######################################################################################################################
#
#   You are given a function f(X) = X^2.
#   You are also given K lists. The ith list consists of Ni elements.
#   You have to pick exactly one element from each list so that the equation below is maximized:
#
#   S = ( f(X1) + f(X2)+ .... + f(Xk)) % M
#
#   Xi denotes the element picked from the ith list . Find the maximized value Smax obtained.
#   % denotes the modulo operator.
#
#   Input Format
#   The first line contains 2 space separated integers K and M.
#   The next K lines each contains an integer Ni followed by Ni space separated integers denoting
#       the elements in the list.
#
#   Output Format
#   Output a single integer denoting the value Smax.
#
#   Constraints
#   1 <= K <= 7
#   1 <= M <= 1000
#   1 <= Ni <= 7
#   1 <= Magnitude of elements in list <= 10^9
#
#   Sample Input
#   3 1000
#   2 5 4
#   3 7 8 9
#   5 5 7 8 9 10
#
#   Sample Output
#   206
#
#   Explanation
#   Picking 5 from the 1st list, 9 from the 2nd list and 10 from the 3rd list gives the maximum value equal
#   to (5^2 + 9^2 + 10^2) % 1000 = 206.
#
#######################################################################################################################
