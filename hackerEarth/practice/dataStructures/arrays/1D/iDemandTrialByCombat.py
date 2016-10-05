# I Demand Trial by Combat

#######################################################################################################################
#
#   After Joeffrey chocked to death, Cercei blamed Tyrian for his death. After seeing his love, Shae betrayed him,
#   he demanded trial by combat. Now this combat is not with swords but with logic and problem solving. Tywin will
#   ask Tyrian questions and he have to answer them correctly.
#   Tywin asks him this question:
#   There are n lannisters, out of which some are sitting and some are standing. After one hour, some of them will
#   sit according to this rule:
#   Only those lannisters will sit who had both their neighbors sitting the previous hour. For more clarity refer
#   to sample test case. Now, Tywin asks Tyrian to tell who all are standing and who all are sitting after m hours.
#   Note: For lannisters on corners there is only 1 neighbor.
#
#   [Input]
#   First line contains an integer t denoting no.of test cases.
#   Second line contains two integers n,m denoting number of lannisters and no.of hours respectively.
#   Third line contains n space separated integers either 0 or 1 depending on whether lannister is standing
#   or sitting respectively
#
#   [Output]
#   For each test case output n space separated integers according to the ques. For more clarity see sample test case.
#
#   [Constraints]
#   1 <= t <= 1000
#   2 <= n <= 100
#   0 <= m <= 10000
#
#   SAMPLE INPUT
#   2
#   3 4
#   1 1 1
#   6 2
#   1 0 1 1 0 0
#
#   SAMPLE OUTPUT
#   1 1 1
#   1 0 0 0 0 0
#
#   Explanation
#   2nd test case: In the first hour the sitting and standing order will be : 0 1 0 0 0 0 because 1st and 6th
#   lannister have no neighbour sitting in the previous hour so they will stand. 2nd lannister have both his
#   neighbours sitting in the previous hour so he will sit. 3rd, 4th and 5th lannister have only one of their
#   neighbour sitting, so they will stand. In the second hour the sitting and standing order will be: 1 0 0 0 0 0
#   because only 1st lannister have both his neighbour's sitting in the previous hour.
#   Note: For 1st and last person assume only one neighbour.
#
#######################################################################################################################
