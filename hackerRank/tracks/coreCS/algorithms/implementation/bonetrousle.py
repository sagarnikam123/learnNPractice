# Bonetrousle

#######################################################################################################################
#
#   Here's a humerus joke:
#
#       Why did Papyrus the skeleton go to the store by himself? Because he had no body to go with him!
#
#   Did you like it? Don't worry, I've got a ton more. A skele-ton.
#   Once upon a time, Papyrus the skeleton went to buy some pasta from the store. The store's inventory is bare-bones
#   and they only sell one thing — boxes of uncooked spaghetti! The store always stocks exactly k boxes of pasta, and
#   each box is numbered sequentially from 1 to k. This box number also corresponds to the number of sticks of
#   spaghetti in the box, meaning the first box contains 1 stick, the second box contains 2 sticks, the third box
#   contains 3 sticks, …, and the kth box contains k sticks. Because they only stock one box of each kind, the store
#   has a tendon-cy to sell out of spaghetti.
#   During each trip to the store, Papyrus likes to buy exactly n sticks of spaghetti by purchasing exactly b boxes
#   (no more, no less). Not sure which boxes to purchase, Papyrus calls Sherlock Bones for help but he's also stumped!
#   Do you have the guts to solve this puzzle?
#   Given the values of n, k, and b for t trips to the store, determine which boxes Papyrus must purchase during each
#   trip. For each trip, print a single line of b distinct space-separated integers denoting the box number
#   for each box of spaghetti Papyrus purchases (recall that the store only has one box of each kind). If it's not
#   possible to buy n sticks of spaghetti by purchasing b boxes, print -1 instead.
#
#   Input Format
#   The first line contains a single integer, t, denoting the number of trips to the store.
#   Each of the t subsequent lines describes a trip to the store in the form of three space-separated integers
#   describing the respective values of n (the number of sticks to buy), k(the number of boxes the store has
#   for sale), and b (the number of boxes to buy) for that trip to the store.
#
#   Constraints
#   1 <= t <= 20
#   1 <= b <= 10^5
#   1 <= n <= 10^18
#   1 <= k <= 10^18
#   b <= k
#
#   Output Format
#   For each trip to the store:
#
#       If there is no solution, print -1 on a new line.
#       Otherwise, print a single line of b distinct space-separated integers where each integer denotes
#   the box number (i.e., the number of spaghetti sticks in the box) that Papyrus must purchase.
#
#   If there are multiple possible solutions, you can print any one of them.
#   Do not print any leading or trailing spaces.
#
#   Sample Input
#   4
#   12 8 3
#   10 3 3
#   9 10 2
#   9 10 2
#
#   Sample Output
#   2 3 7
#   -1
#   5 4
#   1 8
#
#   Explanation
#   Papyrus makes the following trips to the store:
#       - He wants to buy exactly b=3 boxes of spaghetti and have a total number of n=12 sticks. During this trip,
#               the store has k=8 boxes of spaghetti sticks where the first box has 1 stick, the second box has 2
#               sticks, the third box has 3 sticks, and so on. One possible solution would be the following:
#       Figure
#       - Papyrus can buy the 2-stick, 3-stick, and 7-stick boxes for the total of 2+3+7 = 12 sticks. Note that this
#           is not the only valid solution; other valid solutions are acceptable.
#       - He wants to buy exactly b=3 boxes of spaghetti and have a total number of n=10 sticks. Because the store
#           only has three boxes in stock containing 1,2, and 3 sticks of spaghetti, it's not possible for
#           Papyrus to buy n sticks of spaghetti as buying all three boxes would only yield 1+2+3 = 6 sticks
#           (which is less than the n = 10 that he wanted to purchase). Thus, we print -1 on a new line.
#       - The third and fourth trips to the store both contain the same values (n=9, k=10,b=2); this is simply to
#           illustrate that there may be multiple solutions for any given trip to the store
#           and any valid solution is acceptable
#
#######################################################################################################################
