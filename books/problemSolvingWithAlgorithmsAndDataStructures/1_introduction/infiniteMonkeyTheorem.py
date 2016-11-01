# Infinite Monkey Theorem

#######################################################################################################################
#
#   Here is a self check that really covers everything so far. You may have heard of the infinite monkey theorem?
#   The theorem states that a monkey hitting keys at random on a typewriter keyboard for an infinite amount of time
#   will almost surely type a given text, such as the complete works of William Shakespeare. Well, suppose we
#   replace a monkey with a Python function. How long do you think it would take for a Python function to
#   generate just one sentence of Shakespeare? The sentence we’ll shoot for is: “methinks it is like a weasel”
#
#   You are not going to want to run this one in the browser, so fire up your favorite Python IDE. The way we will
#   simulate this is to write a function that generates a string that is 27 characters long by choosing random
#   letters from the 26 letters in the alphabet plus the space. We will write another function that will score each
#   generated string by comparing the randomly generated string to the goal.
#
#   A third function will repeatedly call generate and score, then if 100% of the letters are correct we are done.
#   If the letters are not correct then we will generate a whole new string. To make it easier to follow your
#   program’s progress this third function should print out the best string generated so far and
#   its score every 1000 tries.
#
#######################################################################################################################

import random

def generateString():
    alphaSpace = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']
    shakespeareString = 'methinks it is like a weasel'
    monkeyString = ''
    for chNo in range(len(shakespeareString)):
        charNo = random.randint(0,26)
        monkeyString = monkeyString + alphaSpace[charNo]
    return (monkeyString, shakespeareString)

def score(monkeyString, shakespeareString):
    # shakespeareString = 'methinks it is like a weasel'
    if len(monkeyString)==len(shakespeareString):
        localScore = 0
        for eachCh in range(len(monkeyString)):
            if monkeyString[eachCh] == shakespeareString[eachCh]:
                localScore = localScore + 1
        return (monkeyString,localScore)
    else:
        print('Given & generated string are both diff lengths')
        print('genrated', len(monkeyString), len(shakespeareString))

globalScore = 0
while globalScore != 10 :
    monkeyString, shakespeareString = generateString()
    monkeyString, localScore = score(monkeyString, shakespeareString)
    globalScore = localScore
    print(monkeyString, globalScore  )
