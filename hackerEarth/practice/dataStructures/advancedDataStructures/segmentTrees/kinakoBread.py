# Kinako Bread

#######################################################################################################################
#
#   Tohka's favorite food is kinako bread, but she likes to eat bread in general too. For dinner, Shido has bought
#   Tohka N loaves of bread to eat, arranged in a line. Of the N loaves of bread, there are M distinct types of
#   bread numbered from 1 to M. Tohka is very touched that Shido would buy her so much bread, but she is on a diet.
#   Of the ith type of bread, Tohka doesn't want to eat more than Ri loaves. However, the bread is so tasty that
#   she would like to eat at least Li loaves of it. Tohka has decided that she will eat all the bread in a consecutive
#   section of the line, and no more. How many ways can she choose a consecutive section of the line to eat?
#
#   Input:
#   The first line of input will have N and M.
#   The second line of input will have the types of bread in the line, in order, separated from each other
#   by single spaces. It is guaranteed that each type for bread from 1 to M appears at least once.
#   The next M lines will contain Li and Ri, for every i from 1 to M.
#
#   Output:
#   The output should consist of one integer on a single line,
#   the number of ways to pick a consecutive section of the line.
#
#   Constraints:
#   1 ≤ M ≤ N ≤ 105
#   1 ≤ Li ≤ Ri ≤ N
#
#   SAMPLE INPUT
#   7 3
#   2 1 2 3 1 3 2
#   1 1
#   2 2
#   1 3
#
#   SAMPLE OUTPUT
#   2
#
#   Explanation
#   The two ways to choose bread is to choose the segments from (1-indexed) [1, 4] or [3, 7].
#
#######################################################################################################################
