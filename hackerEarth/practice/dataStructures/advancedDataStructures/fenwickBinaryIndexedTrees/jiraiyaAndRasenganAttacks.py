# Jiraiya and Rasengan Attacks

#######################################################################################################################
#
#   Naruto has started training from Jiraiya to develop the most powerful Rasengan attack. Jiraiya as always uses
#   weird training exercises. (diagram)
#
#   Jiraiya has brought a permutation P of 1,2.. N integers. He tells Naruto to sort the permutation using minimum
#   number of Rasengan attacks. In one Rasengan attack Naruto can choose any pair of consecutive elements of the
#   permutation and swap it.
#   To make the task a little difficult, he chooses a subsegment of the permutation uniformly
#   at random PL,PL+1,..,PR (L <= R) and reverses it to make P1,P2,..,PL−1,PR,..,PL+1,PL,PR+1,..,PN.
#   Now he asks Naruto to tell the expected number of Rasengan attacks he need to sort the permutation.
#
#   INPUT
#   The first line contains the integer N. The next line contains N integers denoting the permutation P.
#
#   OUTPUT
#   Print (A∗B^−1) mod 10^9+7 where A/B is the Expected value of number of Rasengan attacks
#   he need to sort P (expressed as an irreducible fraction)
#
#   CONSTRAINTS
#   2 <= N <= 10^5
#
#   SAMPLE INPUT
#   3
#   1 2 3
#
#   SAMPLE OUTPUT
#   833333340
#
#   Explanation
#   The 6 ways of reversing a subarray is
#       1,1 -> 1,2,3. Rasengan attacks = 0
#       2,2 -> 1,2,3. Rasengan attacks = 0
#       3,3 -> 1,2,3. Rasengan attacks = 0
#       1,2 -> 2,1,3. Rasengan attacks = 1
#       2,3 -> 1,3,2. Rasengan attacks = 1
#       1,3 -> 3,2,1. Rasengan attacks = 3
#
#   Probability of getting Rasengan attacks = 0 is 3/6
#   Probability of getting Rasengan attacks = 1 is 2/6
#   Probability of getting Rasengan attacks = 3 is 1/6
#   Expected value of Rasengan attacks = 3/6∗0+2/6∗1+1/6∗3=5/6≡833333340 mod 10^9+7
#
#######################################################################################################################
