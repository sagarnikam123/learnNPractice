# The savior? [3]

#######################################################################################################################
#
#   Fatal Eagle is trying his best to save his city, but he's failing to do so. He knows he needs some external help;
#   some guidance, something... something out of ordinary to defeat this powerful enemy called Mr. XYZ.
#       "Find out the number of pairs in the list you've made, who sum up to an even number!"
#       "Who are you? And what do you mean? Can you elaborate a bit?" Exclaims Fatal Eagle.
#       "I meant, what I said... take a look at the sample explanation of the problem I want you to solve,
#   you'll understand perhaps. And as for who I am? I'm Arjit and like you, I just want to save this city, too."
#   Fatal Eagle is quick to respond to Arjit's task, and decides to solve it quickly. He takes out the list of
#   integers which contains the powers of weird creatures, and starts finding out the number of pairs which sum up
#   to an even number. Here's how he does it:
#   Let's say that he had a list of 4 numbers: [1, 2, 3, 4] His answer would be: 2. How? 1+3 = 4 and 2 + 4 -
#   that is to say, a number will NOT be added to itself and 1+3 is same as 3+1.
#
#   Input format:
#   On the first line of the input there is an integer, T, which denotes the number of test cases.
#   For every test case, there is a number N, denoting the size of the list.
#   Then, on the next line there are N numbers denoting the integers in the list.
#
#   Output format:
#   You need to output the number of required pairs.
#
#   Constraints:
#   1 <= Test Cases <= 50
#   1 <= Number of elements <= 10^3
#   1 <= Value of the elements - Ni <= 10^5
#
#   SAMPLE INPUT
#   4
#   2
#   1 1
#   4
#   1 2 3 4
#   4
#   2 4 6 8
#   3
#   1 3 3
#
#   SAMPLE OUTPUT
#   0
#   2
#   6
#   2
#
#   Explanation
#   In the first case, since the numbers are same, they will not be considered.
#   The second case is explained in the question itself.
#   In the third case, 6 pairs are: (2, 4) (2, 6) (2, 8) (4, 6) (4, 8) (6, 8).
#   In the fourth case, 2 pairs are: (1, with the 1st 3) (1, with the 2nd 3).
#
#######################################################################################################################
