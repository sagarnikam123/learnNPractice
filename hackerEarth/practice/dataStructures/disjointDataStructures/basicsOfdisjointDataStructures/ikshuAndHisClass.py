# Ikshu and his class

#######################################################################################################################
#
#   Ikshu's class is very fond of playing games. Their teacher tied them with many ropes with each other, Such
#   that each student is tied with exactly one rope. It means that if students 2 and 3 are connected and 2 is
#   connected to 4 as well then 2,3 and 4 must be sharing the same rope.
#   Now, teacher asks them to divide themselves in group. One group for each rope, each group consists of the
#   students tied to that particular rope. Each group exchanges gifts among themselves (each student is having
#   exactly one gift before and after the game).
#   What is the total number of distinct exchanges possible ? Two exchanges are distinct if there is atleast one
#   student having different gift with him.
#   NOTE: It is also possible that a student has same gift after exchanging as he had before exchanging.
#   There might be a case where no exchange took place i.e each student is having same gift after exchanging
#   as he was having before exchange.
#
#   Input:
#   First line of input contains two integers N and K, where N is the number of students and K is the number
#   of connections between students. Next K lines contains two integers which are the indices(0 based) of
#   students connected by a rope.
#
#   Output:
#   Print a single integer which is the total number of exchanges possible modulus (10^9 + 7)
#
#   Constraints:
#   1 <= N <= 100000
#   1 <= K <= 100000
#
#   SAMPLE INPUT
#   5 2
#   1 2
#   3 4
#
#   SAMPLE OUTPUT
#   4
#
#   Explanation
#   0 is alone, [1,2] and [3,4] are tied to same rope. Now, 0 cannot share gift with anyone whereas [1,2]
#   can has two possible distinct exchanges a) where 1 and 2 exchange gifts b)
#   where they do not exchange gift. Same for [3,4]
#   So, there are 2*2 = 4 different states possible at the end.
#
#######################################################################################################################
