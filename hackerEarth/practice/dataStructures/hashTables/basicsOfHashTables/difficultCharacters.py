# Difficult Characters

#######################################################################################################################
#
#   Yesterday while Omar was trying to learn English, he saw that there are letters repeated many times in words
#   while some other letters repeated only few times or not repeated at all! Of course anyone can memorize the
#   letters (repeated many times) better than the letters repeated few times, so Omar will concatenate all the
#   words in the context he has, and try to know the difficulty of each letter according
#   to the number of repetitions of each letter.
#   So Omar has now the whole context and wants to arrange the letters from the most difficult letter
#   (repeated few times) to the less difficult letter (repeated many times).
#   If there are 2 letters with the same level of difficulty,
#   the letter with higher value of ASCII code will be more difficult.
#
#   Input Format:
#   Given an integer (T), 1 <= T <= 10 (number of test cases).
#   For each test case:
#   Given a string of (lower English characters),
#   1 <= sizeofstring <= 106 (each string in a new line).
#
#   Output Format:
#   Output the English lower case characters from the most difficult letter to the less difficult letter.
#   (leave a space between 2 successive letters) (Output each test case in a separate line).
#
#   SAMPLE INPUT
#   1
#   oomar
#
#   SAMPLE OUTPUT
#   z y x w v u t s q p n l k j i h g f e d c b r m a o
#
#######################################################################################################################
