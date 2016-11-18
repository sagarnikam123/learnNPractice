# Explosive Game

#######################################################################################################################
#
#   There's no day that Kevin doesn't want to explode something.
#   Today Kevin and Elvis decided to make a dynamite. They have N packages of explosives (N is an even number).
#   The i-th package contains two boxes: one has ai grams of explosives the other bi grams.
#   Elvis and Kevin alternatively take any package and add one of the boxes to a giant dynamite.
#   Another box is discarded. Elvis starts this process. Kevin believes an explosion is beautiful
#   if the giant dynamite contains exactly x grams of explosives. But he hasn't decided on the value of x yet.
#   This process ends when all boxes are taken.
#   Help him and determine for each of Q values xi whether Kevin can make a dynamite with exactly xi grams of
#   explosives regardless of the Elvis' moves.
#
#   Input format:
#   The first line contains 2 space-separated integers N and Q. It's guaranteed that N is an even number.
#   Each of the following N lines contain two space-separated integers ai and bi.
#   Each of the following Q lines contain one integer xi.
#
#   Output format:
#   For each number xi output "YES" (without quotes) if Kevin can make a dynamite which contains exactly xi
#   grams of explosives regardless of the Elvis' moves and "NO" otherwise.
#
#   Constraints:
#       1  <=  N, Q  <=  10^5
#       0  <=  ai , bi  <=  10^9
#       0  <=  x  <=  10^15
#       N  <=  20 in test data worth 24% of all points
#
#   SAMPLE INPUT
#   2 4
#   4 7
#   5 2
#   4
#   9
#   12
#   0
#
#   SAMPLE OUTPUT
#   NO
#   YES
#   NO
#   NO
#
#######################################################################################################################
