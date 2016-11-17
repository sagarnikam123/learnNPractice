# Little Jhool and Brute Force

#######################################################################################################################
#
#   Little Syed loves brute force. He thinks that brute force can be the solution to any problem in the world.
#   You give him any question, and he'll have a brute force answer ready for you, almost all the time. His good
#   friend Little Jhool (Like, always!) decides to teach him a lesson, by giving him problems which cannot be solved
#   by brute force, because he wants Syed to learn algorithms.
#       Given a number, n, Syed needs to find the number closest to n,
#       though less than n which satisfies Jhool's swinging theorem.
#   Jhool's swinging Theorem: A number n, such that it can be expressed as a sum of two positive algebraic cubes;
#   AND, if that number can be expressed in such a manner in more than one way - it satisfies the theorem.
#   Now, everyone here on HackerEarth knows how much we hate Little Jhool (No, not really!) - so we want you
#   to help Syed in figuring out Jhool's queries - once and for all!
#
#   Input Format:
#   The first line contains an integer, t - denoting the number of test cases.
#   The next t lines will contain, an integer - n - denoting the number which Jhool gives.
#
#   Output Format:
#   You have to print the previous number satisfying the given constraints.
#   If no such previous number exists, print -1.
#
#   Constraints:
#   1 <= t <= 100
#   1 <= n <= 704977
#
#   SAMPLE INPUT
#   2
#   100
#   4150
#
#   SAMPLE OUTPUT
#   -1
#   4104
#
#   Explanation
#   In the first case, since no such number below 100 exists, the result is -1. In the second case,
#   4104 is the answer because: (4096 + 8 = 4104) or (161616 + 222) and (3375 + 729 = 4104) or (151515 + 999) -
#   that is, there is more than one way in which 4104 can be expressed, satisfying the theorem.
#
#######################################################################################################################
