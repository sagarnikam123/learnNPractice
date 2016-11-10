# The Minion Game

#######################################################################################################################
#
#   Kevin and Stuart want to play the 'The Minion Game'.
#
#   Game Rules
#
#   Both players are given the same string S.
#   Both players have to make substrings using the letters of the string S.
#   Stuart has to make words starting with consonants.
#   Kevin has to make words starting with vowels.
#   The game ends when both players have made all possible substrings.
#
#   Scoring
#   A player gets +1 point for each occurrence of the substring in the string S.
#
#   For Example:
#   String  S = BANANA
#   Kevin's vowel beginning word = ANA
#   Here, ANA occurs twice in BANANA. Hence, Kevin will get 2 Points.
#
#   For better understanding, see the image below:
#
#   Your task is to determine the winner of the game and their score.
#
#   Input Format
#   A single line of input containing the string S.
#   Note: The string S will contain only uppercase letters: [A-Z].
#
#   Constraints
#   0 < len(S) <= 10^6
#
#   Output Format
#   Print one line: the name of the winner and their score separated by a space.
#   If the game is a draw, print Draw.
#
#   Sample Input
#   BANANA
#
#   Sample Output
#   Stuart 12
#
#   Note :
#   Vowels are only defined as AEIOU. In this problem, Y is not considered a vowel.
#
#######################################################################################################################

swirl = input().strip()

stuartScore = 0
kevinScore = 0
aeiou = ['A', 'E', 'I', 'O','U']

for bate in range(1, len(swirl)+1):
    miya = 0
    kiya = bate
    while kiya < len(swirl)+1:
        compete = swirl[miya : kiya]
        miya +=1
        kiya +=1
        # check
        if compete[0] in aeiou:
            kevinScore +=1
        else:
            stuartScore +=1

if stuartScore ==  kevinScore:
    print('Draw')
elif stuartScore > kevinScore:
    print('Stuart', stuartScore)
else:
    print('Kevin', kevinScore)
