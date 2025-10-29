# Troubling Triple

#######################################################################################################################
#
#   A Puzzle is a game, problem, or toy that tests a person's ingenuity. In a puzzle, one is required to put pieces
#   together, in a logical way, in order to arrive at the correct solution of the puzzle. There are different
#   types of puzzles for different ages.Puzzles are often devised as a form of entertainment but they can also
#   arise from serious mathematical or logistical problems.
#   Ananya and Bhavya are on their way to Goa. On their trip they visit a lot of different places. But one place
#   left Ananya awe struck. She saw a lot of round big stones laid in a straight line with a number encrypted on
#   each of them. She called this number as the value of the stones. Since they both are coders they could not
#   leave their geekiness away for too long. So Bhavya converted the present env_feature to a problem.
#   She labelled all the stones from 1 onwards. She then asked Ananya to tell her the total number of triplets
#   such that the label of 1st stone< label of 2nd stone < label of 3rd stone and the product of value of 1st sone,
#   value of 2nd stone and value of 3rd stone is less than or equal to a given value K that is
#   (value of 1st stone) * (value of 2nd stone) * (value of 3rd stone)<=K. Two triplets are considered different
#   if the label value's of both the triplets are not same. Since Ananya was not in any mood to bang her head on
#   the stones so she asks you to help her.
#
#   Input:
#   The first line contains 2 integer N indicating the number of stones and the given value K.
#   The second line contain N space separated integers denoting the value on the encrypted stone.
#   The first value denotes the value of stone labelled 1 the second value for stone labelled 2 and so on.
#
#   Output:
#   The total number of required triplets.
#
#   Constraints:
#   1 ≤ N ≤ 2000
#   1 ≤ value on any stone ≤ 10^6
#   1 ≤ K ≤ 1000001
#
#   SAMPLE INPUT
#   4 42
#   3 2 5 7
#
#   SAMPLE OUTPUT
#   2
#
#   Explanation
#   The required triplets are (3,2,5) and (3,2,7).
#
#######################################################################################################################
